class Song
    attr_accessor :name, :artist, :genre
    @@count = 0
    @@genres = []
    @@artists = []

    def initialize(name, artist, genre) #takes in three arguments: a name, artist and genre
        @name = name #has a name
        @artist = artist #has an artist 
        @genre = genre
        @@count += 1 #when a new song is created, access the @@count class variable and increment its value by 1
        @@genres << genre #initialize method should add the genre of the song being created to the @@genres array via shovel
        @@artists << artist #initialize method should add artists to the @@artists array via shovel -push object into array
    end

    
    def self.count #is a class method that returns that number of songs created
        @@count #calls @@count and have alreeady added each song incrementally upon initialization 
    end

    def self.genres #is a class method that returns a unique array of genres of existing songs
        @@genres.uniq #calls genre, have added incrementally upon initialization, .uniq removes duplicates 
    end

    def self.artists #is a class method that returns a unique array of genres of existing songs
        @@artists.uniq 
    end

    def self.genre_count 
        genre_count = {} #assign empty hash
        @@genres.each do |genre| #iterate over @@geners- for #each genre
            if genre_count[genre]  #if genre_count for key [genre] exists
                genre_count[genre] += 1 #incremented by one
            else
                genre_count[genre] = 1 #if it does not already exist, create a new key/value pair
            end 
        end 
        genre_count # return the hash
    end

    def self.artist_count #same concept as genre_count
        artist_count = {}
        @@artists.each do |artist|
            if artist_count[artist]
                artist_count[artist] += 1
            else
                artist_count[artist] = 1
            end
        end
        artist_count
    end

end