require 'rails_helper'

RSpec.describe "aws_vpcs/index", type: :view do
  before(:each) do
    assign(:aws_vpcs, [
      AwsVpc.create!(
        :name => "Name",
        :aws_name => "Aws Name",
        :cidr_block => "Cidr Block",
        :instance_tenancy => "Instance Tenancy",
        :enable_dns_support => "Enable Dns Support",
        :enable_dns_hostnames => "Enable Dns Hostnames",
        :subnet_base => "Subnet Base",
        :aws_account => nil,
        :aws_region => nil
      ),
      AwsVpc.create!(
        :name => "Name",
        :aws_name => "Aws Name",
        :cidr_block => "Cidr Block",
        :instance_tenancy => "Instance Tenancy",
        :enable_dns_support => "Enable Dns Support",
        :enable_dns_hostnames => "Enable Dns Hostnames",
        :subnet_base => "Subnet Base",
        :aws_account => nil,
        :aws_region => nil
      )
    ])
  end

  it "renders a list of aws_vpcs" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Aws Name".to_s, :count => 2
    assert_select "tr>td", :text => "Cidr Block".to_s, :count => 2
    assert_select "tr>td", :text => "Instance Tenancy".to_s, :count => 2
    assert_select "tr>td", :text => "Enable Dns Support".to_s, :count => 2
    assert_select "tr>td", :text => "Enable Dns Hostnames".to_s, :count => 2
    assert_select "tr>td", :text => "Subnet Base".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
