require 'rails_helper'

RSpec.describe "Terminal4updates", type: :request do
  describe "GET /terminal4updates" do
    it "works! (now write some real specs)" do
      get terminal4updates_path
      expect(response).to have_http_status(200)
    end
  end
end
