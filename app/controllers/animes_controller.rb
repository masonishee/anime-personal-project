class AnimesController < ApplicationController
  def index
    @animes = Anime.all
    render :index
  end

  def create
    @anime = Anime.create(
      name: params[:name],
      year: params[:year],
      country: params[:country],
      genre: params[:genre],
    )
    render :show
  end

  def show
    @anime = Anime.find_by(id: params[:id])
    render :show
  end

  def update
    @anime = Anime.update(
      name: params[:name] || @anime.name,
      year: params[:year] || @anime.year,
      country: params[:country] || @anime.country,
      genre: params[:genre] || @anime.genre,
    )
    render :show
  end

  def destroy
    @anime = Anime.find_by(id: params[:id])
    @anime.destroy
    render json: { message: "#{@anime.name} has been successfully destroyed!" }
  end
end
