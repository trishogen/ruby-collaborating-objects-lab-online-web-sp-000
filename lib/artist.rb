class Artist

  attr_accessor :name, :songs

  @@all = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    @songs << song
  end

  def self.all
    @@all
  end

  def save
    @@all << self
  end

  def self.find_or_create_by_name(name)
    if self.all.name[name]
      self.all.name
    else
      @name = name
      artist = Artist.new(name)
      self.all << artist
      artist
    end
  end

end
