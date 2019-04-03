class ApplicationController < Sinatra::Base
  register Sinatra::ActiveRecordExtension
  set :session_secret, "my_application_secret"
  set :views, Proc.new { File.join(root, "../views/") }

  get '/' do
    erb :index
  end
  # 
  # get '/songs' do
  #   @songs = Song.all
  #   erb :songs
  # end
  #
  # get '/genres' do
  #   @genres = Genre.all
  #   erb :genres
  # end
  #
  # get '/artists' do
  #   @artists = Artist.all
  #   erb :artists
  # end
  #
  # get '/songs/:slug' do
  #   # binding.pry
  #   @song = Song.find_by_slug(params[:slug])
  #   erb :show_song
  # end
  #
  # get '/artists/:slug' do
  #   @artist = Artist.find_by_slug(params[:slug])
  #   @songs = @artist.songs
  #   erb :show_artist
  # end
  #
  # get '/genres/:slug' do
  #   # binding.pry
  #   @genre = Genre.find_by(name:params[:slug])
  #   # Genre.find_by_slug(params[:slug])
  #   @genre_songs = @genre.songs
  #   erb :show_genre
  # end

end
