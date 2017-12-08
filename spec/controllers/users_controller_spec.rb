require 'rails_helper'

RSpec.describe UsersController, type: :controller do
  describe "GET sign_up" do
    it "redirect to sign up page" do
      expect(get: "/sign_up").to route_to("users#new")
    end

    it "returns http success" do
      get :new
      expect(response).to be_success
    end
  end

  describe "GET users" do
    it "redirect to users index page" do
      expect(get: "/users").to route_to("users#index")
    end

    it "returns http success" do
      get :index
      expect(response).to be_success
    end
  end
end
