class Artist
  @@artists = []

  define_method(:initialize) do |name|
    @name = name
    @id = @@artists.length().+(1)
    @cds = []
  end

  define_method(:name) do
    @name
  end

  define_method(:save) do
    @@artists.push(self)
  end

  define_singleton_method(:all) do
    @@artists
  end

  define_method(:id) do
    @id
  end

  define_method(:cds) do
    @cds
  end

  define_method(:add_album) do |album|
    @cds.push(album)
  end

  define_singleton_method(:clear) do
    @@artists = []
  end

  define_singleton_method(:find_it) do |identification|
    found_artist = nil
    @@artists.each do |artist|
      if artist.id().eql?(identification.to_i)
        found_artist = artist
      end
    end
    found_artist
  end

end
