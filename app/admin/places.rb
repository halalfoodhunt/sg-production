ActiveAdmin.register Place do
    active_admin_importable
  
    permit_params [:logo, :brand_name, :general_email, :general_outlet_contact_number, :operating_address, :website, :facebook_page, :instagram_handle, :link_to_online_ordering_page, :link_to_online_reservation_page, :question_1, :question_2, :featured_image, :merchant_id, :listing_id, :place_type_id, :location_id, :qualifying_type_id, :latitude, :longitude, :draft, :verified, :on_the_menu, :halal_expiry, :expiry_date, :opening_hours_attributes => [:id, :day_id, :open, :close, :_destroy], :rewards_attributes => [:id, :discount_id, :terms], :menus_attributes => [:id, :image, :name, :description, :price, :_destroy], :verifying_documents_attributes => [:id, :document, :_destroy], dining_type_ids: [], feature_ids: [], menu_item_ids: []]
    
    batch_action :edit, form: {
      listing_id: Listing.all.map { |listing| [listing.name, listing.id] },
      qualifying_type_id: QualifyingType.all.map { |qualifying_type| [qualifying_type.name, qualifying_type.id] },
      place_type_id: PlaceType.all.map { |place_type| [place_type.name, place_type.id] }
    } do |ids, inputs|
  # inputs is a hash of all the form fields you requested
      redirect_to collection_path, notice: [ids, inputs].to_s
    end
    
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
      f.inputs "Place" do
        f.input :logo, :as => :file, :hint => image_tag(f.object.logo.url(:medium)) 
        f.input :featured_image, :as => :file, :hint => image_tag(f.object.featured_image.url(:thumb)) 
        f.input :merchant_id, :label => 'Merchant', :as => :select, :collection => Merchant.all.map{|u| [u.name, u.id]}
        f.input  "listing"
        f.input  "brand_name"
        f.input  "general_email"
        f.input  "general_outlet_contact_number"
        f.input  "operating_address"
        f.input  "website"
        f.input  "facebook_page"
        f.input  "instagram_handle"
        f.input  "link_to_online_ordering_page"
        f.input  "link_to_online_reservation_page"
        f.input  "question_1"
        f.input  "question_2"
        f.input  "latitude"
        f.input  "longitude"
        f.input  "draft",                           default: true
        f.input  "verified",                        default: false
        f.input  "halal_expiry", :as => :datepicker
        f.input  "expiry_date", :as => :datepicker
        f.input  "created_at",                                      null: false
        f.input  "updated_at",                                      null: false
        f.input  "qualifying_types"
        f.input  "locations"
        f.input  "place_types"
        f.input  "features"
        f.input  "dining_types"
        f.input  "menu_items"
        f.input  "slug"
        f.inputs do
        f.has_many :rewards,
            allow_destroy: true,
            new_record: true do |a|
              a.input :discount
              a.input :terms
              a.actions
            end
        end
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
    column("Merchant"){|place| place.merchant.name }
    column("Listing"){|place| place.listing.name }
    column "brand_name"
    column "general_email"
    column "general_outlet_contact_number"
    column "operating_address"
    column "website"
    column "facebook_page"
    column "instagram_handle"
    column "link_to_online_ordering_page"
    column "link_to_online_reservation_page"
    column "question_1"
    column "question_2"
    column "latitude"
    column "longitude"
    column "draft"
    column "verified"
    column "halal_expiry"
    column "expiry_date"
    column("qualifying_type"){|place| place.qualifying_type.name }
    column("location"){|place| place.location.name }
    column("place_type"){|place| place.place_type.name }
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
