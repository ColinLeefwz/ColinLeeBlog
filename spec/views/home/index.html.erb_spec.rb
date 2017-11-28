require 'rails_helper'

RSpec.describe "home/index.html.erb", :type => :view do
  it "displays the 'homepage' id" do
    render

    expect(rendered).to match(/Welcome/)
  end
end
