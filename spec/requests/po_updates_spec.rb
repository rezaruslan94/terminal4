require 'rails_helper'

RSpec.describe "PoUpdates", type: :request do
  describe "GET /po_updates" do
    it "works! (now write some real specs)" do
      get po_updates_path
      expect(response).to have_http_status(200)
    end
  end
end
