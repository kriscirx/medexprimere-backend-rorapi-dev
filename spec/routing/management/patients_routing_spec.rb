require "rails_helper"

RSpec.describe Management::PatientsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(:get => "/management/patients").to route_to("management/patients#index")
    end

    it "routes to #show" do
      expect(:get => "/management/patients/1").to route_to("management/patients#show", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/management/patients").to route_to("management/patients#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/management/patients/1").to route_to("management/patients#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/management/patients/1").to route_to("management/patients#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/management/patients/1").to route_to("management/patients#destroy", :id => "1")
    end
  end
end
