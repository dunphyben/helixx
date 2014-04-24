class FormatsController < ApplicationController

  def index
    @format = Format.new
    @formats = Format.all
  end

  def show
    @format = Format.find(params[:id])
  end

  def create
    @format = Format.create(strong)
    redirect_to formats_path
  end


  def destroy
    @format = Format.find(params[:id])
    @format.destroy
    redirect_to formats_path
  end

private


  def strong
    params.require(:format).permit(:name)
  end
end
