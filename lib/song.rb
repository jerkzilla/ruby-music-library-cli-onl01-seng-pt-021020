class Song
attr_accessor :name

@@all = []

  def initialize(name, artist = nil)
    @name = name
    self.artist=artist #if artist
    save
  end

  def save
    @@all << self
  end

  def self.create(name)
    song = self.new(name)
    song.save
    song
  end

  def self.all
    @@all
  end

  def self.destroy_all
    @@all.clear
  end

  def artist
    @artist
  end

  def artist=(artist)
    @artist = artist
    artist.add_song(self)
  end
end
