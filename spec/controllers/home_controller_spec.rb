require 'rails_helper'

RSpec.describe HomeController, :type => :controller do

  describe "GET index" do
    it "redirect to home index when access rout" do
      expect(get: "/").to route_to("home#index")
    end

    it "returns http success" do
      get :index
      expect(response).to be_success
    end
  end

end
