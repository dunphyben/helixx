class IdeasController < ApplicationController

  def index
    @ideas = Idea.all
    @vote = Vote.new
    @videovote = Videovote.new

    if params[:id] == nil
      if Idea.all.length == 0
        @idea = Idea.new
      else
        @idea = Idea.find(Idea.all.first.id)
      end
    else
      @idea = Idea.find(params[:id])
    end
  end

  def new
    @idea = Idea.new
  end

  def create
    @idea = Idea.create(idea_params)
    if @idea.save
      respond_to do |format|
        format.html do
          flash[:notice] = "Idea Created."
          redirect_to idea_path(@idea)
        end
        format.json { render => @idea, :status => 201 }
      end
    else
      respond_to do |format|
        format.html { render 'new' }
        format.json { render :json => @idea.errors, :status => 422 }
      end
    end
  end

  def show
    @idea = Idea.friendly.find(params[:id])

    respond_to do |format|
      format.html
      format.json { render json: @ideas }
    end
  end

  def edit
    @idea = Idea.find(params[:id])
  end

  def update
    @idea = Idea.find(params[:id])
    if @idea.update(params[:idea])
      respond_to do |format|
        format.html do
          flash[:notice] = "Idea updated."
          redirect_to idea_path(@idea)
        end
        format.json { head :no_content }
      end
    else
      respond_to do |format|
        format.html { render 'edit' }
        format.json { render :json => @idea.errors, :status => 422 }
      end
    end
  end

  def destroy
    @idea = Idea.find(params[:id])
    @idea.destroy
    respond_to do |format|
      format.html do
        flash[:notice] = "Idea deleted."
        redirect_to ideas_path
      end
      format.json { head :no_content }
    end
  end

private

  def idea_params
    params.require(:idea).permit(:title, :content, :summary, :published, :slug)
  end
end
