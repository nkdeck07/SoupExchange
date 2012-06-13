
class StaticPagesController < ApplicationController
  def home
  	Soup.all
  end
end
