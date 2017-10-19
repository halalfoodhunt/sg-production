ActiveAdmin.register Merchant do
    index do
    column :name
    column :position
    column :mobile_number
    column :registered_name_of_business
    column :business_registration_number
    column :office_number
    column :office_mailing_address
    column :role
    default_actions
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
