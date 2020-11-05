require 'rails_helper'

RSpec.describe "HelloWorlds", type: :request do

  describe "GET /index" do
    it "returns http success" do
      get "/hello_world/index"
      expect(response).to have_http_status(:success)
    end
  end

end
