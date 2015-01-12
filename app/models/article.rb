class Article < ActiveRecord::Base
	has_many :replies, dependent: :destroy

	validates :title, presence: true
	validates :content, presence: true

	#default_scope -> { order('created_at DESC') }
end