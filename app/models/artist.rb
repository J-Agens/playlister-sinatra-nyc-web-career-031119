class Artist < ActiveRecord::Base
  has_many :songs
  has_many :genres, through: :songs

  def slug
    slug = self.name.downcase
    slug.split(' ').join('-')
  end

  def self.find_by_slug(slug)
    artist = slug.split('-').map do |name|
              name.capitalize
            end.join(' ')

    self.find_by(name: artist)
  end
end
