class Article < ActiveRecord::Base
  validates :title, :summary, presence: true

  def to_param
    "#{id} #{title}".parameterize
  end
end
