require 'rails_helper'

RSpec.describe "Blogs", type: :request do
  describe "GET /index" do
    it "returns http success" do
      get "/blogs/index"
      expect(response).to have_http_status(:success)
    end
  end

end
