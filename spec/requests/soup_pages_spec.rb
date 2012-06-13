require 'spec_helper'

describe "Soup pages" do

  subject { page }
  
  describe "view page" do
    let(:soup) { FactoryGirl.create(:soup) }
    before { visit soup_path(soup) }

    it { should have_selector('h1',    text: soup.title) }
    it { should have_selector('p', 	   text: soup.recipe) }
    it { should have_selector('p',     text: soup.ingredients) }
  end
end

