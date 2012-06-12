require 'spec_helper'

describe "Static pages" do

  describe "Home page" do

    it "should have the content 'Soup Exchange'" do
      visit root_path
      page.should have_content('Welcome to the Soup Exchange')
    end
  end
end
