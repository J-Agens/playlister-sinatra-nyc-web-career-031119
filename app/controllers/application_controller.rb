class ApplicationController < Sinatra::Base
  register Sinatra::ActiveRecordExtension
  set :session_secret, "my_application_secret"
  set :views, Proc.new { File.join(root, "../views/") }

  get '/' do
    erb :index
  end

  get '/songs' do
    @songs = Song.all
    erb :songs
  end

  get '/genres' do
    @genres = Genre.all
    erb :genres
  end

  get '/artists' do
    @artists = Artist.all
    erb :artists
  end

  get '/songs/:slug' do
    @song = Song.find_by_slug(params:slug)
    erb :show_song
  end

  get '/artists/:slug' do
    @artist = Artist.find(params[:id])
    @songs = Song.where(artist_id: @artist.id)
    erb :show_artist
  end

  get '/genres/:slug' do
    @genre = Genre.find(params[:id])
    @songs = Song.where(genre_id: @genre.id)
    erb :show_genre
  end

end
