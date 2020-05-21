class Artist
  attr_accessor :name
  @@all =[]
  def initialize(name)
    @name = name
    @@all << self

  end
  def self.all
    @@all
  end
  def add_song(song)
    song.artist = self
  end
  def songs
    songsarray=[]
    Song.all each do |song|
      if song.artist == self
        songsarray << song
      end
    end
    songsarray
  end
  def self.find_or_create_by_name(name)
    new_artist = nil
    @@all.each do |artist|
      if artist.name == name
        new_artist = artist
      end
    end
    if new_artist == nil
      new_artist = Artist.new(name)
    end
    new_artist
  end
 def print_songs
   Artist.songs
 end

end
