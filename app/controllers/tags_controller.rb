class TagsController < ApplicationController

  def index
    @tag = Tag.new
    @tags = Tag.all
  end

  def show
    @tag = Tag.find(params[:id])
  end

  def create
    @tag = Tag.create(strong)
    redirect_to tags_path

  end

  def edit

  end

  def update

  end

  def destroy
    @tag = Tag.find(params[:id])
    @tag.destroy
    redirect_to tags_path
  end

private


  def strong
    params.require(:tag).permit(:name)
  end
end
