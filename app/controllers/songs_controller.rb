class SongsController < ApplicationController
  set :views, Proc.new { File.join(root, "../views/songs") }

  get '/songs' do
    @songs = Song.all
    erb :songs
  end

  # get '/songs/new' do
  #   @song = Song.new
  #   erb :new_songs
  # end

  get '/songs/:slug' do
    # binding.pry
    @song = Song.find_by_slug(params[:slug])

    erb :show_song
  end

  # post '/songs' do
  #   @song = Song.create(name: params["Name"])
  #   @song.artist = Artist.find_by(name: params["artist"])
  #   # @song.genre_id = Genre.find_by_slug(params[:genre]).id
  #   redirect "/songs/#{@song.slug}"
  # end



end
