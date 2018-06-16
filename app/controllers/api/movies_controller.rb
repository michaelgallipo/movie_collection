class Api::MoviesController < ApplicationController

  def index
    @movies = Movie.all
    render "index.json.jbuilder"
  end

  def show
    @movie = Movie.find(params[:id])
    render "show.json.jbuilder"
  end

  def create
    @movie = Movie.create(
      title: params[:title],
      genre: params[:genre],
      year: params[:year],
      art_url: params[:art_url]
      )
    render "show.json.jbuilder"
  end

  def update
    @movie = Movie.find(params[:id])
      @movie.title = params[:title] || @movie.title
      @movie.genre = params[:genre] || @movie.genre
      @movie.year = params[:year] || @movie.year
      @movie.art_url = params[:art_url] || @movie.art_url

      @movie.save
      render "show.json.jbuilder"
  end

  def destroy
    @movie = Movie.find(params[:id])
    @movie.destroy
    render json: {message: "Movie successfully deleted"}
  end


end
