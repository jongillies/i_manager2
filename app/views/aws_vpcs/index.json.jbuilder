json.array!(@aws_vpcs) do |aws_vpc|
  json.extract! aws_vpc, :id, :name, :aws_name, :cidr_block, :instance_tenancy, :enable_dns_support, :enable_dns_hostnames, :subnet_base, :aws_account_id, :aws_region_id
  json.url aws_vpc_url(aws_vpc, format: :json)
end
