require("pry")
require_relative('models/album')
require_relative('models/artist')

Album.delete_all()
Artist.delete_all()


artist1 = Artist.new( {'name' => 'Kasabian'})
artist1.save()

artist2 = Artist.new( {'name' => 'The Rolling Stones'})
artist2.save()

album1 = Album.new( {'title' => 'Velociraptor', 'genre' => 'Indie', 'artist_id' => artist1.id})
album1.save()

album2 = Album.new( {'title' => 'Let it Bleed', 'genre' => 'Rock', 'artist_id' => artist2.id})
album2.save()

album3 = Album.new( {'title' => '48:13', 'genre' => 'Indie', 'artist_id' => artist1.id})
album3.save()



binding.pry
nil
