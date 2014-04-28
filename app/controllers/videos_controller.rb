class VideosController < ApplicationController

  def index
    @video = Video.new
    @videos = Video.all
  end

  def show
    @video = Video.find(params[:id])

    respond_to do |format|
      format.html
      format.json { render json: @video }
    end
  end

  def create
    @video = Video.create(strong)
    redirect_to videos_path

  end


  def destroy
    @video = Video.find(params[:id])
    @video.destroy
    redirect_to videos_path
  end

private
  def strong
    params.require(:video).permit(:video_url, :title, :idea_id, :user_id)
  end
end
