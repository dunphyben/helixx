class VotesController < ApplicationController

  def index
    @votes = Vote.all
  end



  def create
    @vote = Vote.create(vote_params)
    redirect_to root_url

  end
private
  def vote_params
    params.require(:vote).permit(:user_id, :idea_id)
  end
end
