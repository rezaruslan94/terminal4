require "rails_helper"

RSpec.describe Terminal4outsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/terminal4outs").to route_to("terminal4outs#index")
    end

    it "routes to #new" do
      expect(:get => "/terminal4outs/new").to route_to("terminal4outs#new")
    end

    it "routes to #show" do
      expect(:get => "/terminal4outs/1").to route_to("terminal4outs#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/terminal4outs/1/edit").to route_to("terminal4outs#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/terminal4outs").to route_to("terminal4outs#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/terminal4outs/1").to route_to("terminal4outs#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/terminal4outs/1").to route_to("terminal4outs#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/terminal4outs/1").to route_to("terminal4outs#destroy", :id => "1")
    end

  end
end
