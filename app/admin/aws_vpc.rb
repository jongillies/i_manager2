ActiveAdmin.register AwsVpc do
  permit_params :name, :aws_name, :cidr_block, :instance_tenancy, :enable_dns_support, :enable_dns_hostnames, :subnet_base

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
