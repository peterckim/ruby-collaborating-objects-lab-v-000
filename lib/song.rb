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
  
  def artist
    self.artist
  end
  
  def self.new_by_filename(file)
    file_array = file.split(" - ")
    song_artist = file_array[0]
    song_title = file_array[1]
    new_song = Song.new(song_title)
    new_song.artist = song_artist
    new_song
  end
end