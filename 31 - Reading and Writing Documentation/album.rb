class Album
  include Enumerable

  attr_reader :songs # variable

  def initialize # Constructor
    @songs = []
  end

  def add_song(song)
    songs << song
  end

  def each # Override
    songs.each {|song| yield song}
  end
end