require "rails_helper"

RSpec.describe Terminal4updatesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/terminal4updates").to route_to("terminal4updates#index")
    end

    it "routes to #new" do
      expect(:get => "/terminal4updates/new").to route_to("terminal4updates#new")
    end

    it "routes to #show" do
      expect(:get => "/terminal4updates/1").to route_to("terminal4updates#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/terminal4updates/1/edit").to route_to("terminal4updates#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/terminal4updates").to route_to("terminal4updates#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/terminal4updates/1").to route_to("terminal4updates#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/terminal4updates/1").to route_to("terminal4updates#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/terminal4updates/1").to route_to("terminal4updates#destroy", :id => "1")
    end

  end
end
