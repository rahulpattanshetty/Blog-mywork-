class ReviewsController < ApplicationController

def new
	@review = Review.new
end

def create
@review = Review.new(params[:review].permit(:article_id, :body, :rating))
	if user_signed_in?
		@review.user_id = current_user.id
		@review.save
		redirect_to :back, notice: "review added"
	else
		redirect_to new_user_session_path, notice: "Please login to add comment"
	end
end

end
