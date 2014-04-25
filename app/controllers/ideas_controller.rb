class IdeasController < ApplicationController

  def index
    @ideas = Idea.all
    @vote = Vote.new
    if params[:id] == nil
      @idea = Idea.find(Idea.all.first.id)
    else
      @idea = Idea.find(params[:id])
    end
    # respond_to do |format|
    #   format.html
    #   format.js
    # end
  end

  def new
    @idea = Idea.new
  end

  def create
    @idea = Idea.create(idea_params)
    redirect_to idea_path(@idea)
  end

  def show
    @idea = Idea.friendly.find(params[:id])

  end

  def destroy
    @idea = Idea.find params[:id]
    @idea.destroy
  end



private

  def idea_params
    params.require(:idea).permit(:title, :content, :summary, :published, :slug)
  end
end
