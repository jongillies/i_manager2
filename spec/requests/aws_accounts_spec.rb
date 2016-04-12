require 'rails_helper'

RSpec.describe "AwsAccounts", type: :request do
  describe "GET /aws_accounts" do
    it "works! (now write some real specs)" do
      get aws_accounts_path
      expect(response).to have_http_status(200)
    end
  end
end
