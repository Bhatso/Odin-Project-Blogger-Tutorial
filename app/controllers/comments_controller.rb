class CommentsController < ApplicationController
	include CommentsHelper

	def create
		@comment = Comment.new(comment_params) #comment_params is defined in comments_helper
		@comment.article_id = params[:article_id]

		@comment.save

		redirect_to article_path(@comment.article) #redirect to the show action
	end

	
end
