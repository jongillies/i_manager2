require 'rails_helper'

RSpec.describe "aws_accounts/index", type: :view do
  before(:each) do
    assign(:aws_accounts, [
      AwsAccount.create!(
        :description => "MyText"
      ),
      AwsAccount.create!(
        :description => "MyText"
      )
    ])
  end

  it "renders a list of aws_accounts" do
    render
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
