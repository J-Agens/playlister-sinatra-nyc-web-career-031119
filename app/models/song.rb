class Song < ActiveRecord::Base
  belongs_to :artist
  has_many :song_genres
  has_many :genres, through: :song_genres

  def slug
    slug = self.name.downcase
    slug.split(' ').join('-')
  end

  def self.find_by_slug(slug)
    song = slug.split('-').map do |name|
              name.capitalize
            end.join(' ')

    self.find_by(name: song)
  end
end
