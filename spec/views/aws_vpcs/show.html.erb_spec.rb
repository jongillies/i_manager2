require 'rails_helper'

RSpec.describe "aws_vpcs/show", type: :view do
  before(:each) do
    @aws_vpc = assign(:aws_vpc, AwsVpc.create!(
      :name => "Name",
      :aws_name => "Aws Name",
      :cidr_block => "Cidr Block",
      :instance_tenancy => "Instance Tenancy",
      :enable_dns_support => "Enable Dns Support",
      :enable_dns_hostnames => "Enable Dns Hostnames",
      :subnet_base => "Subnet Base",
      :aws_account => nil,
      :aws_region => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Aws Name/)
    expect(rendered).to match(/Cidr Block/)
    expect(rendered).to match(/Instance Tenancy/)
    expect(rendered).to match(/Enable Dns Support/)
    expect(rendered).to match(/Enable Dns Hostnames/)
    expect(rendered).to match(/Subnet Base/)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end
