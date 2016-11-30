require('rspec')
require('album')

describe(Album) do

  describe('#get_title') do
    it('returns album title') do
      test_album = Album.new('Sremmlife', 2015)
      expect(test_album.get_title()).to(eq('Sremmlife'))
    end
  end

  describe('#get_year') do
    it('returns release year for album') do
      test_album = Album.new('Sremmlife', 2015)
      expect(test_album.get_year()).to(eq(2015))
    end
  end

  describe('.all') do
    it('is empty to begin with') do
      expect(Album.all()).to(eq([]))
    end
  end

  describe('#save') do
    it('saves album to an array of albums') do
      test_album = Album.new('Is this it', 2001)
      test_album.save()
      expect(Album.all()).to(eq([test_album]))
    end
  end


end
