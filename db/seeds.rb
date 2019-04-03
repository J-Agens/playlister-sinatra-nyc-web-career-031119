# Add seed data here. Seed your database with `rake db:seed`

require_relative '../lib/library_parser'
LibraryParser.parse

# rap = Genre.create(name: "rap")
# gucci = Artist.create(name: "Gucci")
# prybaby = Song.create(name: "Pry Baby", artist_id: 6, genre_id: 6)
# sg = SongGenre.create(genre_id: 6, song_id: 5)
