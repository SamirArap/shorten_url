class UrlsController < ApplicationController

	def index
		
	end

	def create
		if !params[:url].blank?
			client = Bitly.client 
			@url = client.shorten(params[:url])
			redirect_to urls_path, notice: @url.short_url
		else
			redirect_to urls_path, alert: "Invalid URL!"			
		end
	end
end
