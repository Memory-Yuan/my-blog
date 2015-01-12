class RepliesController < ApplicationController

	include RepliesHelper
	#before_action :get_article, only: [:create, :destroy]

	def create
		@article = Article.find(params[:reply][:article_id])
		@reply = @article.replies.build(reply_params)
		respond_to do |format|
			if @reply.save
				save_guest
		        flash[:success] = 'Reply was successfully created.'
		        format.html { redirect_to @article }
		        format.js
			else
				flash[:danger] = 'Create reply failed.'
				format.html { redirect_to @article }
			end
		end
		
	end

	def destroy
		#@reply = Reply.find_by(id: params[:id])
		@article = Article.find(params[:article_id])
		@reply = @article.replies.find_by(id: params[:id])
		@reply.destroy
		respond_to do |format|
			format.html { redirect_to @article }
			format.js
		end
		
	end

	private
		def get_article
			@article = Article.find(params[:reply][:article_id])
		end

		def reply_params
			params.require(:reply).permit(:name, :email, :website, :content)
		end

		def save_guest
			guest_in params.require(:reply).permit(:name, :email, :website)
		end
end
