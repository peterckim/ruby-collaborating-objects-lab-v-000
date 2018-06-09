class Artist
  attr_accessor :name, :songs, :size
  @@all = []
  
  def initialize(name)
    @name = name
    @songs = []
    self.save
  end
  
  def name=(name)
    @name = name
  end
  
  def self.all
    @@all
  end
  
  def add_song(song)
    @songs << song
  end
  
  def save
    @@all << self
  end
  
  # Search through @@all for the name. Then return that object with that name.
  def self.find_or_create_by_name(name)
    @@all.each do |artist|
      if artist.name == name
        return artist
      else
        
      end
    end
    artist = Artist.new(name)
    @@all << artist
    artist
  end
  
  def print_songs
    @songs.each do |song|
      puts "#{song.name}"
    end
  end
  
end