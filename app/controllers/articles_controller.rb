class ArticlesController < ApplicationController
before_action :authenticate_user!, except:[:index, :show]

def index
	@articles = Article.all
	
end
def new
	@article = Article.new
end
def create
	@article =Article.new(article_params)
	if @article.save
		redirect_to articles_path,notice: "Successfully created"
	else
		render action: "new"
	end
end
def show
	@article = Article.find(params[:id])
	@review = Review.new
	@reviews = Review.where('article_id=?',@article.id)
end
def edit
	@article = Article.find(params[:id])
end
def update
	@article =Article.find(params[:id])
	if @article.update_attributes(article_params)
		redirect_to article_path(@article.id), notice: "Successfully updated"
	else
		render action: "edit"
	end
	
end
def destroy
	@article = Article.find(params[:id])
	@article.destroy
	redirect_to articles_path, notice:"Successfully deleted"
	
end
private

def article_params
	params.require(:article).permit(:title,:body, category_ids:[])
	
end
end
