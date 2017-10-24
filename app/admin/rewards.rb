ActiveAdmin.register Reward do
    
      csv do
        column("Caterer"){|reward| reward.caterer.brand_name }
        column("Place"){|reward| reward.place.brand_name }
        column("Discount"){|reward| reward.discount.name }
        column :terms
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
