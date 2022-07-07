class Movie < ActiveRecord::Base

#READ

    def self.create_with_title(title)
        Movie.create(title: title)
    end

    def self.first_movie
        Movie.first
    end

    def self.last_movie
        Movie.last
    end

    def self.movie_count
        Movie.count
    end

    def self.find_movie_with_id(id)
        # returns the movie with the corresponding id
        Movie.find(id)
    end

    def self.find_movie_with_attributes(attributes)
        #  returns the movie with the corresponding attributes 
        Movie.find_by(attributes)
    end

    def self.find_movies_after_2002
        # returns a list of movies released after 2002
        Movie.where("release_date > 2002")
    end

#UPDATE

    def update_with_attributes(attributes)
        # updates one movie
        self.update(attributes)
    end

    def self.update_all_titles(title)
        # updates the title of all the movies
        Movie.update(title: title)
    end

#DELETE

    def self.delete_by_id(id)
        # deletes the record with the corresponding id
        movie = Movie.find(id)
        movie.destroy
    end

    def self.delete_all_movies
        # deletes all the movies from the movies table
        Movie.destroy_all
    end
end