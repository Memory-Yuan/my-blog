class Article < ActiveRecord::Base
	has_many :replies, dependent: :destroy
	has_many :article_tagships
	has_many :tags, through: :article_tagships
	validates :title, presence: true
	validates :content, presence: true

	#default_scope -> { order('created_at DESC') }
end