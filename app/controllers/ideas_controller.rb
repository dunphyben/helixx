class IdeasController < ApplicationController

  def index
    @ideas = Idea.all
    @idea = Idea.find(1)
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
