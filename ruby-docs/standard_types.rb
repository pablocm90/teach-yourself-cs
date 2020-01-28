require_relative 'classes'

songs = SongList.new

def get_duration(string)
  minutes = string.split(':')[0].to_i
  seconds = string.split(':')[1].to_i
  minutes * 60 + seconds
end

File.open('song_list.txt').each do |line|
  file, length, name, title = line.chomp.split(/\s*\|\s*/)
  name.squeeze!(" ")
  mins, secs = length.scan(/\d+/)
  songs.append Song.new(title, name, mins.to_i*60+secs.to_i)
end

p songs



# Stopped in Standard Types # WWorking with Strings
