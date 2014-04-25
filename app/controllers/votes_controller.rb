class VotesController < ApplicationController

  def index
    @votes = Vote.all
  end

  def new
    @vote = Vote.new
    self.create

  end

  def create
    @vote = Vote.new(:user_id => current_user.id)
    @vote = Vote.create(params[:id])

  end

end
