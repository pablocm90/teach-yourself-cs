class Song
  attr_reader :name, :artist, :duration
  @@plays = 0

  def initialize(name, artist, duration)
    @name = name
    @artist = artist
    @duration = duration
    @plays = 0
  end

  def to_s
    "Song: #{@name}---#{@artist} (#{@duration * 100})"
  end

  def play
    @plays += 1
    @@plays += 1
    "This  song: #@plays plays. Total #@@plays plays."
  end
end

class KaraokeSong < Song
  def initialize(name, artist, duration, lyrics)
    super(name, artist, duration)
    @lyrics = lyrics
  end

  def to_s
    super + " [#{@lyrics}]"
  end
end

class SongList

  MaxTime = 5*60

  def SongList.isTooLong(aSong)
    return aSong.duration > MaxTime
  end

end
