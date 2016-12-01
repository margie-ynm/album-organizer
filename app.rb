require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/album')
require('./lib/artist')

# Home
get('/') do
  erb(:index)
end

# Add new artist page
get('/artist/new') do
  erb(:new_artist)
end

# Takes user input, adds it to artist array
post('/new_artist') do
  name = params.fetch('artist')
  Artist.new(name).save()
  erb(:success)
end

# Shows all artists
get('/artists/all') do
  @artists = Artist.all()
  erb(:all_artists)
end

# Add new album page
get('/album/new') do
  erb(:new_album)
end

# Takes user input, adds it to the album array
post('/new_album') do
  album_name = params.fetch('album')
  year_date = params.fetch('year')
  Album.new(album_name, year_date).save()
  erb(:success)
end

# Show all albums
get('/albums/all') do
  @albums = Album.all()
  erb(:all_albums)
end

# Dynamic pages for artists
get('/artists/:id') do
  @artist = Artist.find_it(params.fetch('id').to_i())
  erb(:artist)
end













#
