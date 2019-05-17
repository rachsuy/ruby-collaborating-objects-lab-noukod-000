class MP3Importer
  attr_accessor :path, :artist

  def initialize(path)
   @path = path
   @files=Dir.entries(path).grep(/.*\.mp3/)
  end
  
  def import
    @files.each do |e| Song.new_by_filename(e) 
  end 
  end
  
  # files
   #   @files = Dir.glob("#{@path}/*.mp3").collect{ |file| file.gsub("#{@path}/", "") }
 # end
end