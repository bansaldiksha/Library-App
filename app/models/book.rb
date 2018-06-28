class Book < ApplicationRecord
	has_one :user
	
	validates :book_name, presence: true, length: { maximum: 50 }
	validates :author, presence: true
	validates :price, presence: true
end
