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
end