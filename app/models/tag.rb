class Tag < ActiveRecord::Base
	has_many :article_tagships
	has_many :articles, through: :article_tagships
	validates :name, presence: true
	
	def self.get_arti_usent(article)
		article_tag_ids = "SELECT tag_id from article_tagships WHERE article_id = :article_id"
		where("id NOT IN (#{article_tag_ids})", article_id: article.id)
	end
end
