class Show < ActiveRecord::Base

    def self.highest_rating
        highest_rating = Show.maximum(:rating)
        puts highest_rating
        return highest_rating
    end 

    def self.most_popular_show
        most_popular_show = Show.find_by(rating: '10')
        puts most_popular_show.name
        return most_popular_show
    end

    def self.lowest_rating
        lowest_rating = Show.minimum(:rating)
        puts lowest_rating
        return lowest_rating
    end

    def self.least_popular_show
        least_popular_show = Show.find_by(rating: '2')
        puts least_popular_show.name
        return least_popular_show
    end

    def self.ratings_sum
        ratings_sum = Show.sum(:rating)
        puts ratings_sum
        return ratings_sum
    end

    def self.popular_shows(rating='6'&&'7'&&'8'&&'9'&&'10')
        popular_shows = Show.where('rating > 5')
        return popular_shows
        puts popular_shows
    end

    def self.shows_by_alphabetical_order
        shows_by_alphabetical_order = Show.order(name: :asc)
        return shows_by_alphabetical_order
        puts shows_by_alphabetical_order
    end 

    # Show.order(name: :desc)

end