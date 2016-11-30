class Artist
  @@artists = []

  define_method(:initialize) do |name|
    @name = name
    # @id = @@artists.length().+(1)
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

end
