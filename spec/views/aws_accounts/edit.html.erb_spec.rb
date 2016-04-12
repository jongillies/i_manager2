require 'rails_helper'

RSpec.describe "aws_accounts/edit", type: :view do
  before(:each) do
    @aws_account = assign(:aws_account, AwsAccount.create!(
      :description => "MyText"
    ))
  end

  it "renders the edit aws_account form" do
    render

    assert_select "form[action=?][method=?]", aws_account_path(@aws_account), "post" do

      assert_select "textarea#aws_account_description[name=?]", "aws_account[description]"
    end
  end
end
