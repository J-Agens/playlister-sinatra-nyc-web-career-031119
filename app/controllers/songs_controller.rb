require 'rack-flash'
class SongsController < ApplicationController
  set :views, Proc.new { File.join(root, "../views/songs") }
  use Rack::Flash
  get '/songs' do
    @songs = Song.all
    erb :songs
  end

  get '/songs/new' do
    @song = Song.new
    erb :new_songs
  end

  post '/songs' do
    artist = Artist.find_or_create_by(name: params["artist"])
    @song = Song.create(name: params[:name], artist_id: artist.id)
    @song.genre_ids = params[:genres]
    # params[:genres].each do |genre|
    #   @song.genres << Genre.find(genre)
    # end
    # binding.pry
    flash[:message] = "Successuflly created song."
    redirect "/songs/#{@song.slug}"
  end

  get '/songs/:slug' do
    @song = Song.find_by_slug(params[:slug])
    erb :show_song
  end





end
