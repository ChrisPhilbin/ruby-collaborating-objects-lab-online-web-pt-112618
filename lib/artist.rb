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

  def self.find(name)
    self.all.find do |artist|
      artist.name = name
    end
  end

  def self.find_or_create_by_name(name)
    self.find(name) ? self.name : self.new(name)
  end

end
