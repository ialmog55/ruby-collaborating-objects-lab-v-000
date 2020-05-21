class MP3Importer
  attr_accessor :path

  def initialize(filepath)
    @path = filepath
  end

  def files
   files=[]
   Dir[@path].foreach do |fname|
     if fname.match (/mp3\z/)
       files << fname
     end
   end
  end
  def import
    self.files.each do |filename|
      Song.new_by_filename(filename)
    end
  end
end
