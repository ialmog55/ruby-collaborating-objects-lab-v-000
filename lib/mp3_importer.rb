class MP3Importer
  attr_accessor :path

  def initialize(filepath)
    @path = filepath
  end
  binding.pry
  def files
   Dir.entries(@path)

  end
  def import
    self.files.each do |filename|
      Song.new_by_filename(filename)
    end
  end
end
