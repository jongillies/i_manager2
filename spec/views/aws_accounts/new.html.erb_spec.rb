require 'rails_helper'

RSpec.describe "aws_accounts/new", type: :view do
  before(:each) do
    assign(:aws_account, AwsAccount.new(
      :description => "MyText"
    ))
  end

  it "renders new aws_account form" do
    render

    assert_select "form[action=?][method=?]", aws_accounts_path, "post" do

      assert_select "textarea#aws_account_description[name=?]", "aws_account[description]"
    end
  end
end
