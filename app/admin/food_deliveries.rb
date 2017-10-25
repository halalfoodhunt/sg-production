ActiveAdmin.register FoodDelivery do
     active_admin_importable
  
    permit_params [:logo, :brand_name, :delivery_hotline, :general_email, :link_to_online_ordering_page, :facebook_page, :instagram_handle, :question_1, :featured_image, :draft, :verified, :halal_expiry, :expiry_date, :merchant_id, :listing_id, :qualifying_type_id, :opening_hours_attributes => [:id, :day_id, :open, :close, :_destroy], :rewards_attributes => [:id, :discount_id, :terms], :menus_attributes => [:id, :image, :name, :description, :price], :verifying_documents_attributes => [:id, :document], delivery_service_type_ids: [], delivery_location_ids: [], menu_item_ids: []]
    
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
      f.inputs "Caterer" do
        f.input :logo, :as => :file, :hint => image_tag(f.object.logo.url(:medium)) 
        f.input :featured_image, :as => :file, :hint => image_tag(f.object.featured_image.url(:thumb)) 
        f.input  "merchant"
        f.input  "listing"
        f.input  "brand_name"
        f.input  "general_email"
        f.input  "delivery_hotline"
        f.input  "link_to_online_ordering_page"
        f.input  "facebook_page"
        f.input  "instagram_handle"
        f.input  "question_1"
        f.input  "draft",                           default: true
        f.input  "verified",                        default: false
        f.input  "halal_expiry"
        f.input  "expiry_date"
        f.input  "created_at",                                      null: false
        f.input  "updated_at",                                      null: false
        f.input  "qualifying_type"
        f.input  "delivery_service_types"
        f.input  "delivery_locations"
        f.input  "menu_items"
        f.input  "slug"
        f.inputs do
        f.has_many :rewards,
            allow_destroy: true,
            new_record: false do |a|
              a.input :discount
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
    column("Merchant"){|food_delivery| food_delivery.merchant.name }
    column("Listing"){|food_delivery| food_delivery.listing.name }
    column "brand_name"
    column "general_email"
    column "general_contact_number"
    column "website_online_ordering_page"
    column "facebook_page"
    column "instagram_handle"
    column "question_1"
    column "draft"
    column "verified"
    column "halal_expiry"
    column "expiry_date"
    column "slug"
  end
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