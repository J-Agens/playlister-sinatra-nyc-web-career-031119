class ArtistsController < ApplicationController
  set :views, Proc.new { File.join(root, "../views/artists") }
  get '/artists' do
    @artists = Artist.all
    erb :artists
  end

  get '/artists/new' do
    @artist = Artist.create(params)
    erb :new_artists
  end

  get '/artists/:slug' do
    @artist = Artist.find_by_slug(params[:slug])
    @songs = @artist.songs
    erb :show_artist
  end




end
