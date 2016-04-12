require 'rails_helper'

RSpec.describe "aws_accounts/show", type: :view do
  before(:each) do
    @aws_account = assign(:aws_account, AwsAccount.create!(
      :description => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/MyText/)
  end
end
