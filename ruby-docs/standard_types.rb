require_relative 'classes'

songs = SongList.new

def get_duration(string)
  minutes = string.split(':')[0].to_i
  seconds = string.split(':')[1].to_i
  minutes * 60 + seconds
end

File.open('song_list.txt').each do |line|
  p line
  song_parts = line.split('|')
  duration = get_duration song_parts[1]
  artist = song_parts[2].strip
  name = song_parts[3]
  songs.append(Song.new(name, artist, duration))
end

p songs




