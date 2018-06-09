class Song
  attr_accessor :name, :artist_name, :artist
  
  def initialize(name)
    @name = name
  end
  
  def name=(name)
    @name = name
  end
  
  def artist=(artist)
    @artist = artist
  end
  
  def artist_name=(artist_name)
    @artist_name = artist_name
  end
  
  def self.new_by_filename(file)
    file_name = file.split(" - ")
    new_song = Song.new(file_name[1])
    new_song.artist = Artist.find_or_create_by_name(file_name[0])
    new_song
  end
  
end