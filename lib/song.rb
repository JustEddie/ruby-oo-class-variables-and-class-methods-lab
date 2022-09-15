class Song

    attr_accessor :name, :artist, :genre

    @@count = 0
    @@artists = []
    @@genres = []

    def initialize (name,artist,genre)
        @name = name
        @artist = artist
        @genre = genre
        @@count += 1
        @@artists << @artist
        @@genres << @genre
    end

    def self.count
        @@count
    end

    def self.artists
        @@artists.uniq
    end

    def self.genres
        @@genres.uniq
    end

    def self.genre_count
        genre_count = {}
        self.genres.each do |style|
            #binding.pry
            genre_count[style] = @@genres.filter{|a| a == style}.length
        end
        genre_count
    end

    def self.artist_count
        artist_count = {}
        self.artists.each do |a|
            artist_count[a] = @@artists.filter{|x| x == a}.length
        end
        artist_count
    end
end