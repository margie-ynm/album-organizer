require('rspec')
require('album')
require('artist')


describe(Artist) do
  before() do
    Artist.clear()
  end

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

  describe('#cds') do
    it("initially returns an empty array of cds for the artist") do
      test_artist = Artist.new("Kendrick Lamar")
      expect(test_artist.cds()).to(eq([]))
    end
  end

  describe('#save') do
    it('saves the artist to an array of artists') do
      test_artist = Artist.new("Beach House")
      test_artist.save()
      expect(Artist.all()).to(eq([test_artist]))
    end
  end

  describe(".clear") do
    it("empties out all of the saved Artists") do
      Artist.new("Foster the People").save()
      Artist.clear()
      expect(Artist.all()).to(eq([]))
    end
  end

  describe("#id") do
    it("returns the id for the artist") do
      test_artist = Artist.new("Rae Sremmurd")
      test_artist.save()
      test_artist2 = Artist.new("The Internet")
      test_artist2.save()
      expect(test_artist2.id()).to(eq(2))
    end
  end

  describe(".find_it") do
    it("returns an artist by its id number") do
      test_artist = Artist.new("Mac Miller")
      test_artist.save()
      test_artist2 = Artist.new("A Tribe Called Quest")
      test_artist2.save()
      expect(Artist.find_it(test_artist.id())).to(eq(test_artist))
    end
  end

  describe('#add_album') do
    it('adds an album to an artist') do
      test_album = Album.new("Best Day Ever", 2011)
      test_artist = Artist.new("Mac Miller")
      test_artist.add_album(test_album)
      expect(test_artist.cds()).to(eq([test_album]))
    end
  end


end
