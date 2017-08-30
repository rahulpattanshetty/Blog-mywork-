class Article < ActiveRecord::Base
	has_many :article_categories
	has_many :categories, through: :article_categories

	
	validates_presence_of :title
end
