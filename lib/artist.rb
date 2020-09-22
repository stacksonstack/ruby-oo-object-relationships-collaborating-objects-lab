class Artist

    attr_accessor :name

    @@all = []

    def initialize(name)
        @name = name
        @@all.push(self)
    end

    def self.all
        @@all
    end

    def songs 
        Song.all.find_all do |song|
            song.artist == self
        end
    end 

    def add_song(song)
        song.artist = self
    end

    def self.find_or_create_by_name(name)
        self.all.map do |artist|
            if artist.name == name
                return artist
            end
        end
        return Artist.new(name)
    end

    def print_songs
        self.songs.map{|song| puts song.name }
    end
end