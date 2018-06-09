class Artist
  @@all = []
  
  def initialize(artist_name)
    @name = artist_name
    @songs = []
  end
  
  def name=(artist_name)
    @name = artist_name
  end
  
  def save
    @@all << self
  end
  
  def self.find_or_create_by_name
    
  end
end