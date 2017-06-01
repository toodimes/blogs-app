class Post < ApplicationRecord
  belongs_to :user
  has_many :comments
  has_many :scores
  has_many :categories

  def increase_views
    self.views = views + 1
  end

end
