class ArticlesController < ApplicationController
include ArticlesHelper
  def show
    @article = Article.find(params[:id])
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(
      article_params
    )
    #@article.title = params[:article][:title]
    #@article.body = params[:article][:body]
    @article.save
    redirect_to articles_path(@article)
  end

  def destroy
    @article = Article.find(params[:id])
    @article.destroy
    redirect_to articles_path(@article)
  end

end
