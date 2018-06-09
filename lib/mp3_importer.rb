class MP3Importer

  def files
    @files = Dir.glob("#{@path}/*.mp3").map do |file|
      File.basename(file) #strips the pathname
    end
  end

end