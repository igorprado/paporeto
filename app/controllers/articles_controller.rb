class ArticlesController < ApplicationController
  def index
    @featured = Article.where(featured: true).first
    @articles = Article.limit(8)
  end

  def show
  end
end
