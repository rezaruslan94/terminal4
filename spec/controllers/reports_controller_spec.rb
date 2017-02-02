require 'rails_helper'

RSpec.describe ReportsController, type: :controller do

  describe "GET #productivity_person" do
    it "returns http success" do
      get :productivity_person
      expect(response).to have_http_status(:success)
    end
  end

end
