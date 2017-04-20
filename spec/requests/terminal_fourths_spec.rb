require 'rails_helper'

RSpec.describe "TerminalFourths", type: :request do
  describe "GET /terminal_fourths" do
    it "works! (now write some real specs)" do
      get terminal_fourths_path
      expect(response).to have_http_status(200)
    end
  end
end
