require 'rails_helper'

RSpec.describe "Users", type: :request do
  before(:each) do
    User.delete_all
  end

  let!(:user) { create(:user, name: "Holley Hirthe PhD", email: "holley@example.com") }

  describe "GET /users" do
    it "returns a list of users in JSON" do
      get "/users", as: :json

      expect(response).to have_http_status(:ok)

      # Parse the response body to JSON
      json = JSON.parse(response.body, symbolize_names: true)

      expect(json.length).to eq(1)

      expect(json.first[:name]).to eq("Holley Hirthe PhD")
      expect(json.first[:email]).to eq("holley@example.com")
    end
  end

  describe "GET /users/:id" do
    it "returns a single user in JSON" do
      get "/users/#{user.id}", as: :json

      expect(response).to have_http_status(:ok)

      json = JSON.parse(response.body, symbolize_names: true)

      expect(json[:name]).to eq(user.name)
      expect(json[:email]).to eq(user.email)
    end
  end
end
