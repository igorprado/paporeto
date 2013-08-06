class ArticlesController < ApplicationController
  def index
    @featured = Article.featured.first
    @articles = Article.published.limit(8)
  end

  def show
  end
end
