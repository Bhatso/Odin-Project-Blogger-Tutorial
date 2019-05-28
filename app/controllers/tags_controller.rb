class TagsController < ApplicationController

	def show
		@tag = Tag.find(params[:id]) 
	end

	def index
		@tag = Tag.all
	end

	def destroy
		@tag = Tag.find(params[:id])
		@tag.destroy

		flash.notice = "tag deleted"

		redirect_to tags_path #redirect to index
	end
end
