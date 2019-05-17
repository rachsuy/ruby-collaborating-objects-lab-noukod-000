class MP3Importer
  attr_accessor :path, :artist

  def initialize(path)
   @path = path
   
  end
  
  def import
    @files.each do |e| Song.new_by_filename(e) 
  end 
  end
  
  def files
      @files = Dir.glob("#{@path}/*.mp3").collect{ |file| file.gsub("#{@path}/", "") }
  end
end