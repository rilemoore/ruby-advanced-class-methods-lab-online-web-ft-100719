class Song
  attr_accessor :name, :artist_name
  @@all = []

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end

  def self.create
    song = self.new
    save
  end

  def self.new_by_name(namestring)
    song = self.new
    song.name = namestring
    song
  end
end
