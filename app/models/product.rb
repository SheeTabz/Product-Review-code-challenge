class Product < ActiveRecord::Base
    has_many :reviews
    has_many :users, through: :reviews

    def leave_review(user, star_rating, comment)
        Review.create(star_rating: star_rating, comment: comment, product_id: self.id, user_id: user.id)
    end

    def print_all_reviews
        reviews = Review.all.filter do|review|
            data = (review.product_id==self.id)
            data
        end
    end

    def average_raing
        self.reviews
    end
end