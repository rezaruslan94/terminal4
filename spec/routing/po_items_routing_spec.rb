require "rails_helper"

RSpec.describe PoItemsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/po_items").to route_to("po_items#index")
    end

    it "routes to #new" do
      expect(:get => "/po_items/new").to route_to("po_items#new")
    end

    it "routes to #show" do
      expect(:get => "/po_items/1").to route_to("po_items#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/po_items/1/edit").to route_to("po_items#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/po_items").to route_to("po_items#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/po_items/1").to route_to("po_items#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/po_items/1").to route_to("po_items#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/po_items/1").to route_to("po_items#destroy", :id => "1")
    end

  end
end
