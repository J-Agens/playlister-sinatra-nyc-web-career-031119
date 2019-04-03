class SongGenre < ActiveRecord::Base
  belongs_to :genre
  belongs_to :song
  # has_many :artists, through: :songs
end
