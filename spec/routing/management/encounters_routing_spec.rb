require "rails_helper"

RSpec.describe Management::EncountersController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(:get => "/management/encounters").to route_to("management/encounters#index")
    end

    it "routes to #show" do
      expect(:get => "/management/encounters/1").to route_to("management/encounters#show", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/management/encounters").to route_to("management/encounters#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/management/encounters/1").to route_to("management/encounters#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/management/encounters/1").to route_to("management/encounters#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/management/encounters/1").to route_to("management/encounters#destroy", :id => "1")
    end
  end
end
