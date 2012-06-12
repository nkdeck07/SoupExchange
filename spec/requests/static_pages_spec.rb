require 'spec_helper'

describe "Static pages" do

  describe "Home page" do

    it "should have the content 'Soup Exchange'" do
      visit root_path
      page.should have_selector('h1', text: 'Welcome to the Soup Exchange')
    end
  end
end
