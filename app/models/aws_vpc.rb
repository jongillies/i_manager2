class AwsVpc < ActiveRecord::Base
  belongs_to :aws_account
  belongs_to :aws_region
end
