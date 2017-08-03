require 'rails_helper'

RSpec.describe "Terminal4outs", type: :request do
  describe "GET /terminal4outs" do
    it "works! (now write some real specs)" do
      get terminal4outs_path
      expect(response).to have_http_status(200)
    end
  end
end
