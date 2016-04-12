require 'rails_helper'

RSpec.describe "aws_vpcs/new", type: :view do
  before(:each) do
    assign(:aws_vpc, AwsVpc.new(
      :name => "MyString",
      :aws_name => "MyString",
      :cidr_block => "MyString",
      :instance_tenancy => "MyString",
      :enable_dns_support => "MyString",
      :enable_dns_hostnames => "MyString",
      :subnet_base => "MyString",
      :aws_account => nil,
      :aws_region => nil
    ))
  end

  it "renders new aws_vpc form" do
    render

    assert_select "form[action=?][method=?]", aws_vpcs_path, "post" do

      assert_select "input#aws_vpc_name[name=?]", "aws_vpc[name]"

      assert_select "input#aws_vpc_aws_name[name=?]", "aws_vpc[aws_name]"

      assert_select "input#aws_vpc_cidr_block[name=?]", "aws_vpc[cidr_block]"

      assert_select "input#aws_vpc_instance_tenancy[name=?]", "aws_vpc[instance_tenancy]"

      assert_select "input#aws_vpc_enable_dns_support[name=?]", "aws_vpc[enable_dns_support]"

      assert_select "input#aws_vpc_enable_dns_hostnames[name=?]", "aws_vpc[enable_dns_hostnames]"

      assert_select "input#aws_vpc_subnet_base[name=?]", "aws_vpc[subnet_base]"

      assert_select "input#aws_vpc_aws_account_id[name=?]", "aws_vpc[aws_account_id]"

      assert_select "input#aws_vpc_aws_region_id[name=?]", "aws_vpc[aws_region_id]"
    end
  end
end
