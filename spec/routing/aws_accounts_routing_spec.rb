require "rails_helper"

RSpec.describe AwsAccountsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/aws_accounts").to route_to("aws_accounts#index")
    end

    it "routes to #new" do
      expect(:get => "/aws_accounts/new").to route_to("aws_accounts#new")
    end

    it "routes to #show" do
      expect(:get => "/aws_accounts/1").to route_to("aws_accounts#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/aws_accounts/1/edit").to route_to("aws_accounts#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/aws_accounts").to route_to("aws_accounts#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/aws_accounts/1").to route_to("aws_accounts#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/aws_accounts/1").to route_to("aws_accounts#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/aws_accounts/1").to route_to("aws_accounts#destroy", :id => "1")
    end

  end
end
