FactoryGirl.define do
  factory :aws_availability_zone do
    aws_region nil
    description "MyText"
    use false
  end
end
