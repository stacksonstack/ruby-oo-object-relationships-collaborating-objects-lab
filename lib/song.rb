class Song

    attr_accessor :name, :artist

    @@all = []

    def initialize(name)
        @name = name
        @@all.push(self)
    end

    def self.all
        @@all
    end

    def artists=(artist)
        @artist = artist
    end

    def self.new_by_filename(file_name)
        new_song = Song.new(file_name.split('-')[1].strip)
        new_song.artist = Artist.find_or_create_by_name(file_name.split('-')[0].strip)
        return new_song
    end

    def artist_name=(artist)
        self.artist = Artist.find_or_create_by_name(artist)
    end
    
end

