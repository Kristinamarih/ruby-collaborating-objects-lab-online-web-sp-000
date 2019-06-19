class Song 
  attr_accessor :name, :artist, :title
  
  def initialize(name)
    @name = name 
  end
  
  def name
    @name
  end
  
  def artist_name=(name)
    self.artist = Artist.find_or_create_by_name(name)
    artist.add_song(self)
  end
  
  def self.new_by_filename(file)
    song = self.new 
    song.title = file.chomp(".mp3").split(" - ")[1]
    song
    song.artist = file.chomp(".mp3").split(" - ")[2]
    arist 
  end
end
  