class Genre < ActiveRecord::Base
  has_many :song_genres
  has_many :songs, through: :song_genres
  has_many :artists, through: :songs


  def slug
    slug = self.name.downcase
    slug.split(' ').join('-')
  end

  def self.find_by_slug(slug)
    genre = slug.split('-').map do |name|
              name.capitalize
            end.join(' ')

    self.find_by(name: genre)
  end
end
