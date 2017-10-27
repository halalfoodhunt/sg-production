ActiveAdmin.register Supplier do
     active_admin_importable
  
    permit_params [:logo, :brand_name, :general_contact_number, :general_email, :website_online_ordering_page, :facebook_page, :instagram_handle, :featured_image, :self_collection_address, :question_1, :expiry_date, :halal_expiry, :verified, :draft, :merchant_id, :listing_id, :product_qualifying_type_id, :opening_hours_attributes => [:id, :day_id, :open, :close, :_destroy], :rewards_attributes => [:id, :discount_id, :terms], :menus_attributes => [:id, :image, :name, :description, :price], :verifying_documents_attributes => [:id, :document], ordering_method_ids: [], delivery_location_ids: [], product_category_ids: [], online_retail_service_type_ids: []]
    
     controller do
      def new
          super do
            resource.opening_hours.build
            resource.rewards.build
            resource.menus.build
          end
      end
        defaults :finder => :find_by_slug
    end
    
    form do |f|
        f.inputs "supplier" do
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
        f.input  "self_collection_address"
        f.input  "draft",                           default: true
        f.input  "verified",                        default: false
        f.input  "halal_expiry", :as => :datepicker
        f.input  "expiry_date", :as => :datepicker
        f.input  "created_at",                                      null: false
        f.input  "updated_at",                                      null: false
        f.input  "product_qualifying_type"
        f.input  "ordering_methods"
        f.input  "delivery_locations"
        f.input  "online_retail_service_types"
        f.input  "product_categories"
        f.input  "slug"
        f.inputs do
        f.has_many :opening_hours,
            allow_destroy: true,
            new_record: true do |a|
              a.input :day
              a.input :open, :as => :time_picker
              a.input :close, :as => :time_picker
              a.actions
            end
        end
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
    column("Merchant"){|supplier| supplier.merchant.name }
    column("Listing"){|supplier| supplier.listing.name }
    column "brand_name"
    column "general_email"
    column "general_contact_number"
    column "website_online_ordering_page"
    column "facebook_page"
    column "instagram_handle"
    column "question_1"
    column "self_collection_address"
    column "draft"
    column "verified"
    column "halal_expiry"
    column "expiry_date"
    column("product_qualifying_type"){|supplier| supplier.product_qualifying_type.name }
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
