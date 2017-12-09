require 'rails_helper'

RSpec.describe Users::SessionsController, type: :controller do
  describe "GET sign_in" do
    before :each do
      request.env['devise.mapping'] = Devise.mappings[:user]
    end

    it "redirect to sign in page" do
      expect(get: "/users/sign_in").to route_to("users/sessions#new")
    end

    it "returns http success" do
      get :new
      expect(response).to be_success
    end
  end
end
