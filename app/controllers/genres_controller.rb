class GenresController < ApplicationController
set :views, Proc.new { File.join(root, "../views/genres") }

  get '/genres' do
    @genres = Genre.all
    erb :genres
  end

  get '/genres/new' do
    @genre = Genre.create(params)
    erb :new_genres
  end

  get '/genres/:slug' do
    # binding.pry
    @genre = Genre.find_by_slug(params[:slug])
    # Genre.find_by_slug(params[:slug])
    @genre_songs = @genre.songs
    erb :show_genre
  end
end
