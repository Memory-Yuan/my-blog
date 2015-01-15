class ArchivesController < ApplicationController
def index
	@articles = Article.select("id, title, created_at").order("created_at DESC")
	@article_months = @articles.group_by { |t| t.created_at.beginning_of_month }
end
end
