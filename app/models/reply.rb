class Reply < ActiveRecord::Base
  	belongs_to :article

	validates :article_id, presence: true
	validates :content, presence: true
	validates :name, presence: true, length: { maximum: 50 }
	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i
    validates :email, presence: true, format: { with: VALID_EMAIL_REGEX }

	before_save { self.email = email.downcase }
end
