class IdeasController < ApplicationController

  def index
    @ideas = Idea.all
    @users = User.all
    @user = User.find(2)
    if params[:id] == nil
      @idea = Idea.find(37)
    else
      @idea = Idea.find(params[:id])
    end
  end

  def show
    @idea = Idea.find params[:id]

  end

  def destroy
    @idea = Idea.find params[:id]
    @idea.delete
  end

  def new
    @idea = Idea.new
  end

  def create
    @idea = Idea.create(idea_params)
  end

private

 def idea_params
  params.require(:idea).permit(:title, :content, :summary, :published, :slug)
end




end
