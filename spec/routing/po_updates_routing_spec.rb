require "rails_helper"

RSpec.describe PoUpdatesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/po_updates").to route_to("po_updates#index")
    end

    it "routes to #new" do
      expect(:get => "/po_updates/new").to route_to("po_updates#new")
    end

    it "routes to #show" do
      expect(:get => "/po_updates/1").to route_to("po_updates#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/po_updates/1/edit").to route_to("po_updates#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/po_updates").to route_to("po_updates#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/po_updates/1").to route_to("po_updates#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/po_updates/1").to route_to("po_updates#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/po_updates/1").to route_to("po_updates#destroy", :id => "1")
    end

  end
end
