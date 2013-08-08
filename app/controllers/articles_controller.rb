class ArticlesController < ApplicationController
  def index
    @category = Category.find(params[:category_id])

    @featured = @category.articles.featured.first
    @articles = @category.articles.where(featured: false).published.limit(8)
  end

  def show
    @article = Article.find(params[:id])
    @related = @article.category.articles.where.not(id: @article.id).limit(3)
  end
end
