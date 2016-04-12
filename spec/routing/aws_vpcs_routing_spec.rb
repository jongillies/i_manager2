require "rails_helper"

RSpec.describe AwsVpcsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/aws_vpcs").to route_to("aws_vpcs#index")
    end

    it "routes to #new" do
      expect(:get => "/aws_vpcs/new").to route_to("aws_vpcs#new")
    end

    it "routes to #show" do
      expect(:get => "/aws_vpcs/1").to route_to("aws_vpcs#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/aws_vpcs/1/edit").to route_to("aws_vpcs#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/aws_vpcs").to route_to("aws_vpcs#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/aws_vpcs/1").to route_to("aws_vpcs#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/aws_vpcs/1").to route_to("aws_vpcs#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/aws_vpcs/1").to route_to("aws_vpcs#destroy", :id => "1")
    end

  end
end
