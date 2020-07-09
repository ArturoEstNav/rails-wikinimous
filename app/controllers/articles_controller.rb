class ArticlesController < ApplicationController
  before_action :find_article, only: [:show, :edit, :update, :destroy]

  def index
    @articles = Article.all
  end

  def new
    @article = Article.new(article_params)
    @article.save
  end

  def create
    @article = Article.new
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def find_article
    @article = Article.find(params[:id])
  end

  def article_params
    params.require(:article)
  end
end
