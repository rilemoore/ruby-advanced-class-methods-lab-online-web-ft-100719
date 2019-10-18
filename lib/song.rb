class Song
  attr_accessor :name, :artist_name
  @@all = []

  def initialize(name, artist_name)
    @name = name
    @artist = artist_name
    @@all << self
  end

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end

  def self.create
    @name = ""
    @artist_name = ""
    @@all << self
    self
  end

  def self.new_by_name(name_argument)
    @name = name_argument
  end

end
