class Album
  @@albums = []

  define_method(:initialize) do |title, year|
    @title = title
    @year = year
    @id = @@albums.length().+(1)
  end

  define_method(:get_title) do
    @title
  end

  define_method(:get_year) do
    @year
  end

  define_method(:save) do
    @@albums.push(self)
  end

  define_singleton_method(:all) do
    @@albums
  end

  define_singleton_method(:clear) do
    @@albums = []
  end

  define_method(:get_id) do
    @id
  end

  define_singleton_method(:find) do |identification|
    found_album = nil

    @@albums.each do |album|
      if album.get_id().eql?(identification.to_i)
        found_album = album
      end
    end
    found_album
  end

end
