require 'rails_helper'

RSpec.describe "PoItems", type: :request do
  describe "GET /po_items" do
    it "works! (now write some real specs)" do
      get po_items_path
      expect(response).to have_http_status(200)
    end
  end
end
