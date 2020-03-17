class Genre
  attr_accessor :name

  @@all = []

    def initialize(name)
      @name = name
      @songs = []
      save
    end

    def save
      @@all << self
    end

     def self.create(name)
       genre = self.new(name)
       genre.save
       genre
     end

    def self.all
      @@all
    end

    def self.destroy_all
      @@all.clear
    end

    def songs
      @songs
    end

    def artists
      self.songs.collect {|song| s.artist}.uniq 
    end



end
