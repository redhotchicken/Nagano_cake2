class Admin::GenresController < ApplicationController
  before_action :authenticate_admin!
  
  def index
    @genre = Genre.new
    @genres = Genre.all
  end
  
  def create
    @genre = Genre.new(genre_params)
    if @genre.save
      flash[:notice] = "ジャンルが登録されました。"
      redirect_to admin_genres_path
    else
      flash[:notice] = "ジャンル名が空白または重複しています。"
      redirect_to admin_genres_path
    end
  end
  
  def edit
    @genre = Genre.find(params[:id])
  end
  
  def update
    @genre = Genre.find(params[:id])
    if @genre.update(genre_params)
      flash[:notice] = "ジャンルが変更されました。"
      redirect_to admin_genres_path
    else
      flash[:notice] = "ジャンル名が空白または重複しています。"
      render 'edit'
    end
  end
  
  private
  def genre_params
    params.require(:genre).permit(:name)
  end
  
end
