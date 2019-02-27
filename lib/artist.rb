class Artist

attr_accessor :name, :songs
@@songs = []

def initialize(name)
@name = name
@songs = []
end

def add_song(song)
@songs << song
@@songs << song
song.artist = self
end

def add_song_by_name(song_name)
new_song = Song.new(song_name)
new_song.artist = self
@songs << new_song
@@songs << new_song
end

def self.song_count
@@songs.count
end
end
