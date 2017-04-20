require "rails_helper"

RSpec.describe TerminalFourthsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/terminal_fourths").to route_to("terminal_fourths#index")
    end

    it "routes to #new" do
      expect(:get => "/terminal_fourths/new").to route_to("terminal_fourths#new")
    end

    it "routes to #show" do
      expect(:get => "/terminal_fourths/1").to route_to("terminal_fourths#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/terminal_fourths/1/edit").to route_to("terminal_fourths#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/terminal_fourths").to route_to("terminal_fourths#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/terminal_fourths/1").to route_to("terminal_fourths#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/terminal_fourths/1").to route_to("terminal_fourths#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/terminal_fourths/1").to route_to("terminal_fourths#destroy", :id => "1")
    end

  end
end
