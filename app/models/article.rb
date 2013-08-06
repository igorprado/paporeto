class Article < ActiveRecord::Base
  validates :title, :summary, :category, presence: true

  belongs_to :category

  uploads_one :picture, thumb: [90, 80], regular: [600, 300], large: [940, 380]

  paginates_per 20

  def to_param
    "#{id} #{title}".parameterize
  end
end
