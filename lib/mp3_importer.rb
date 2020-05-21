class MP3Importer
  attr_accessor :path
  @@files =[]
  def initialize(filepath)
    @path = filepath
    file=@path.basename
    if file.match (/mp3\z/)
       @@files << file
     end
  end

  def files
   @@files
  end
  def import
    self.files.each do |filename|
      Song.new_by_filename(filename)
    end
  end
end
