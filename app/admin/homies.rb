ActiveAdmin.register Homy do
    active_admin_importable
  
    permit_params [:logo, :brand_name, :general_contact_number, :general_email, :website_online_ordering_page, :facebook_page, :instagram_handle, :featured_image, :question_1, :question_2, :self_collect_location, :draft, :verified, :halal_expiry, :expiry_date, :merchant_id, :listing_id, :qualifying_type_id, :homies_type_id, :rewards_attributes => [:id, :discount_id, :terms, :friends_code], :menus_attributes => [:id, :image, :name, :description, :price], :opening_hours_attributes => [:id, :day_id, :open, :close, :_destroy], :verifying_documents_attributes => [:id, :document], ordering_method_ids: [], delivery_location_ids: [], homies_menu_item_ids: [], homie_service_type_ids: []]
    
     controller do
      def new
          super do
            resource.rewards.build
            resource.menus.build
          end
      end
        defaults :finder => :find_by_slug
    end
    
    form do |f|
      f.inputs "Homy" do
        f.input :logo, :as => :file, :hint => image_tag(f.object.logo.url(:medium)) 
        f.input :featured_image, :as => :file, :hint => image_tag(f.object.featured_image.url(:thumb)) 
        f.input  "merchant"
        f.input  "listing"
        f.input  "brand_name"
        f.input  "general_email"
        f.input  "general_contact_number"
        f.input  "website_online_ordering_page"
        f.input  "facebook_page"
        f.input  "instagram_handle"
        f.input  "question_1"
        f.input  "question_2"
        f.input  "self_collect_location"
        f.input  "draft",                           default: true
        f.input  "verified",                        default: false
        f.input  "halal_expiry", :as => :datepicker
        f.input  "expiry_date", :as => :datepicker
        f.input  "created_at",                                      null: false
        f.input  "updated_at",                                      null: false
        f.input  "qualifying_type"
        f.input  "homies_type"
        f.input  "ordering_methods"
        f.input  "delivery_locations"
        f.input  "homies_menu_items"
        f.input  "homie_service_types"
        f.input  "slug"
        f.inputs do
        f.has_many :rewards,
            allow_destroy: true,
            new_record: true do |a|
              a.input :discount
              a.input :friends_code
              a.input :terms
              a.actions
            end
        end
        f.inputs do
        f.has_many :menus,
            allow_destroy: true,
            new_record: true do |a|
              a.input :image, :as => :file, :hint => image_tag(a.object.image.url(:thumb)) 
              a.input :name
              a.actions
            end
        end
      end
      f.actions
  end
  
  scoped_collection_action :scoped_collection_update, form: -> do
    { expiry_date: 'datepicker',
      halal_expiry: 'datepicker',
      merchant_id: Merchant.all.map { |merchant| [merchant.name, merchant.id] },
      listing_id: Listing.all.map { |listing| [listing.name, listing.id] },
      qualifying_type_id: QualifyingType.all.map { |qualifying_type| [qualifying_type.name, qualifying_type.id] },
      homy_type_id: HomiesType.all.map { |homy_type| [homy_type.name, homy_type.id] },
      draft: [['Yes', 't'], ['No', 'f']],
      verified: [['Yes', 't'], ['No', 'f']]
    }
  end
  
  index do
    selectable_column
    column  "id"
    column  "merchant"
    column  "listing"
    column  "brand_name"
    column  "general_email"
    column  "draft",                           default: true
    column  "verified",                        default: false
    column  "halal_expiry"
    column  "expiry_date"
    actions
  end
  
  csv do
    column  "id"
    column("Merchant"){|homy| homy.merchant.name }
    column("Listing"){|homy| homy.listing.name }
    column "brand_name"
    column "general_email"
    column "general_contact_number"
    column "website_online_ordering_page"
    column "facebook_page"
    column "instagram_handle"
    column "question_1"
    column "question_2"
    column "self_collect_location"
    column "draft"
    column "verified"
    column "halal_expiry"
    column "expiry_date"
    column("homies_type"){|homy| homy.homies_type.name }
    column("qualifying_type"){|homy| homy.qualifying_type.name }
    column "slug"
  end
  
  filter :brand_name
  filter :id
  
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end

end
