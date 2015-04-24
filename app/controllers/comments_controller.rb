class CommentsController < ApplicationController

	def new
		@comment = Comment.new
	end

	def create
		@article = Article.find(params[:article_id])
		@comment = @article.comments.create(comment_params)
		if @comment.save
			redirect_to @article
		end
	end

	def destroy
		@article = Article.find(params[:article_id])
		@comment = @article.comments.find(params[:id])
		if @comment.destroy
			redirect_to @article
		end
	end

	private

	def comment_params
		params.require(:comment).permit!
	end

end


