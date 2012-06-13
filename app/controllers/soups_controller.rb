class SoupsController < ApplicationController
	before_filter :signed_in_user
	def new
		@soup = Soup.new
	end

	def create
		@soup = current_user.soups.create(params[:soup])
		if @soup.save
      		redirect_to(@soup, :notice => "You saved a soup #{current_user.name}")
		end
	end

	def edit 
		@soup = Soup.find(params[:id])
	end 

	def update
		@soup = Soup.find(params[:id])
		@soup.update_attributes(params[:soup])
		redirect_to(@soup)
	end

	def show
		@soup = Soup.find(params[:id])
	end

	def destroy
		@soup = Soup.find(params[:id])
		@soup.destroy
		redirect_to(root_path, :notice => "You deleted #{@soup.title}")
	end
end
