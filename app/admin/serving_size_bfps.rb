ActiveAdmin.register ServingSizeBfp do

 permit_params :ndb_no, :serving_size, :serving_size_uom, :household_serving_size, :household_serving_size_uom, :preparation_state
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
