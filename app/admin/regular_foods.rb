ActiveAdmin.register RegularFood do

 permit_params :ndb_no, :fdgrp_cd, :long_desc, :shrt_desc, :comname, :manufacname, :survey, :ref_desc, :refuse, :sciname, :n_factor, :pro_factor, :fat_factor, :cho_factor
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
