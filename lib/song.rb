require 'pry'
class Song

    attr_accessor :name, :artist, :genre #getter, setter methods, has name, artist, and genre.

    @@count = 0 #class variable
    @@artists = []
    @@genres = []

    def initialize(name, artist, genre) #takes three arguments: a name, artist and genre
        @name = name #instance variable
        @artist = artist
        @genre = genre
        @@count += 1  ##classvariable
        @@artists << artist #class variable
        @@genres << genre
    end
    ##BREAKKK 3:06 - 3:31 pm

    def self.count ##????? why self.count???? 
        @@count
    end

    def self.artists  #class method
      
       @@artists.uniq

    end

    def self.genres

       #binding.pry
        @@genres.uniq
    end

    def self.genre_count
        genre_hash = {}
            @@genres.each do |each| 
            if genre_hash[each] != 1
                genre_hash[each] = 1
                else genre_hash[each] += 1
                end
            end
        genre_hash
    end

    def self.artist_count
        artist_hash = {}
            @@artists.each do |each| 
            if artist_hash[each] != 1
                artist_hash[each] = 1
                else artist_hash[each] += 1
                end
            end
        artist_hash     
    end

end

#Song.new("Lucifer", "Jay-Z", "rap" )
#Song.new("99 Problems", "Jay-Z", "rap")
#Song.new("hit me baby one more time", "Brittany Spears", "pop")