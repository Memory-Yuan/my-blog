class ArticleTagshipsController < ApplicationController
	before_action :set_article

	def index
		respond_to do |format|
			format.js
		end
	end

	def create
		@a_tship = @article.article_tagships.build(article_tagships_params)
		@a_tship.save!
		respond_to do |format|
			format.js { render action: :index }
		end
	end

	def destroy
		@a_tship = @article.article_tagships.find_by(id: params[:id])
		@a_tship.destroy
		respond_to do |format|
	      format.js { render action: :index }
	    end
	end

	private

		def set_article
	      @article = Article.find(params[:article_id])
	      @tags_usent = Tag.get_arti_usent(@article)
	    end

	    def article_tagships_params
	    	params.require(:article_tagship).permit(:tag_id)
	    end
end
