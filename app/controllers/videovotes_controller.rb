class VideovotesController < ApplicationController


  def index
    @videovotes = Videovote.all
  end


  def create
    @videovote = Videovote.create(videovote_params)
    redirect_to root_url

  end
private
  def videovote_params
    params.require(:videovote).permit(:user_id, :video_id)
  end
end
