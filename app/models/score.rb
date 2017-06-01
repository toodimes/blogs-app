class Score < ApplicationRecord
  belongs_to :post
  # belongs_to :user

  def upvote
    amount + 1
  end

  def downvote

  end
end
