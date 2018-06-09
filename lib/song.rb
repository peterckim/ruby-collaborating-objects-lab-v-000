class Song
  def initialize(song_name)
    @name = song_name
  end
  
  def name=(name)
    @name = name
  end
  
  def artist=(artist)
    self.artist = artist
  end
end