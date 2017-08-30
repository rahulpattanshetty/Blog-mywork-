class Review < ActiveRecord::Base
belongs_to :user

validates_presence_of :body, :rating
validates_numericality_of :rating, greater_than_or_equal_to:1
end
