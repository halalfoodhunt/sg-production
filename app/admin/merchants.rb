ActiveAdmin.register Merchant do
  permit_params [:registered_name_of_business, :name, :position, :email, :password, :business_registration_number, :office_number, :mobile_number, :office_mailing_address]
  
  before_filter :only => [:show, :edit] do
    @merchant = Merchant.friendly.find(params[:id])
  end

  form do |f|
      f.inputs "Merchant" do
        f.input :name
        f.input :email
        f.input :password
        f.input :position
        f.input :mobile_number
        f.input :registered_name_of_business
        f.input :business_registration_number
        f.input :office_number
        f.input :office_mailing_address
      end
      f.actions
  end
    
  index do
    column :name
    column :position
    column :mobile_number
    column :registered_name_of_business
    column :business_registration_number
    column :office_number
    column :office_mailing_address
    column :role
    actions
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
