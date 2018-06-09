class MP3Importer
  attr_accessor :path, :size, :files
  
  def initialize(path)
    @path = path
    @files = []
  end
  
  def size
    
  end
  
  def files
    @files = Dir.glob("#{@path}/*.mp3").map do |file|
      File.basename(file) #strips the pathname
    end
  end
  
  
  def import
    @files.each do |file|
      new_song = Song.new_by_filename(file)
    end
    @files
  end
end