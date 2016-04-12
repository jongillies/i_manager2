require 'rails_helper'

RSpec.describe "AwsVpcs", type: :request do
  describe "GET /aws_vpcs" do
    it "works! (now write some real specs)" do
      get aws_vpcs_path
      expect(response).to have_http_status(200)
    end
  end
end
