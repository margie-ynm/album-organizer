require('rspec')
require('album')
require('artist')


describe(Artist) do

  describe('#name') do
    it("returns name of Artist") do
      test_artist = Artist.new("The Strokes")
      expect(test_artist.name()).to(eq("The Strokes"))
    end
  end

  describe(".all") do
    it("is empty at first") do
      expect(Artist.all()).to(eq([]))
    end
  end

  describe('#save') do
    it('saves the artist to an array of artists') do
      test_artist = Artist.new("Beach House")
      test_artist.save()
      expect(Artist.all()).to(eq([test_artist]))
    end
  end


end
