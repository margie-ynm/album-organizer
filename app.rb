require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/album')
require('./lib/artist')

get('/') do
  erb(:index)
end

get('/artist/new') do
  erb(:new_artist)
end

post('/new_artist') do
  name = params.fetch('artist')
  Artist.new(name).save()
  erb(:success)
end

get('/artists/all') do
  @artists = Artist.all()
  erb(:all_artists)
end
