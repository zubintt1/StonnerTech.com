class User < ApplicationRecord
	has_many :StoryBooks
	validates :first_name,  presence: true
	validates :last_name, presence: true
	validates :date_of_birth, presence: true
	validates :email, presence: true
end
