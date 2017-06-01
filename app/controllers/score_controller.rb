class ScoreController < ApplicationController

  def update
    score = Score.find_by(post_id: params[:id])
    score.assign_attributes(
      amount: self.upvote
    )
    redirect_to "/post/#{@blog_post.id}"
  end
end
