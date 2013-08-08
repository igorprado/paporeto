class Category < ActiveRecord::Base
  has_many :articles

  def slug
    name.parameterize
  end

  def featured_article
    articles.featured.first
  end

  def commom_articles
    articles.where(featured: false)
  end
  
end
