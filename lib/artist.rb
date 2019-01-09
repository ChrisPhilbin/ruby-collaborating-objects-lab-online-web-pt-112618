class Artist

  attr_accessor :name, :songs

  @@all = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song_name)
    @songs << song_name
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end

  def find_or_create_by_name(name)
    self.find(name) ? self.name : self.new(name)
  end

end
