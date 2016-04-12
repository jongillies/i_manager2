FactoryGirl.define do
  factory :aws_vpc do
    name "MyString"
    aws_name "MyString"
    cidr_block "MyString"
    instance_tenancy "MyString"
    enable_dns_support "MyString"
    enable_dns_hostnames "MyString"
    subnet_base "MyString"
    aws_account nil
    aws_region nil
  end
end
