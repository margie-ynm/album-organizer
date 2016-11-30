require('rspec')
require('album')
require('artist')


describe(Artist) do

  it("returns name of Artist") do
    test_artist = Artist.new("The Strokes")
    expect(test_artist.name()).to(eq("The Strokes"))
  end


end
