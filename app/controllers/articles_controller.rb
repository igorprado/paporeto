class ArticlesController < ApplicationController
  def index
    @featured = Article.featured.first
    @articles = Article.published.limit(8)
  end

  def show
    @article = Article.find(params[:id])
    @related = @article.category.articles.limit(3)
  end
end
