class StoryBook < ApplicationRecord
	belongs_to :User
	validates :book_name,  presence: true
	validates :title, presence: true
	validates :Author, presence: true
	validates :genre, presence: true
end
