class ArticlesController < ApplicationController
  def index
    @articles = Article.limit(8)
  end

  def show
  end
end
