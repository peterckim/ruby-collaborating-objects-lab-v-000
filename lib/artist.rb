class Artist
  @@all = []
  
  def initialize(artist_name)
    @name = artist_name
    @songs = []
  end
  
  def name=(artist_name)
    @name = artist_name
  end
  
  def name
    @name
  end
  
  def self.all
    @@all
  end
  
  def songs(song)
    @songs << song
  end
  
  def save
    @@all << self
  end
  
  def self.find_or_create_by_name(name)
    @@all.each do |artist_object|
      if artist_object.name == name
        return artist_object
      else
        
      end
    end
    new_artist = Artist.new(name)
    @@all << new_artist
    new_artist
  end
  
  def print_songs
    @songs.each do |songs|
      puts "#{songs}"
    end
  end
end