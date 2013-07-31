class Article < ActiveRecord::Base
  validates :title, :summary, :category, presence: true

  belongs_to :category

  uploads_one :picture, thumb: [100, 100], regular: [300, 200]

  def to_param
    "#{id} #{title}".parameterize
  end
end
