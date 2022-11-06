class User < ActiveRecord::Base
    has_many :reviews
    has_many :products, through: :reviews

    def favorite_product
      data=Review.all.filter do |product|
        product.user_id==self.id
    end
    data.order(:star_rating)
    end
    
    def remove_reviews(product)
       product.reviews.map do |review|
        if review.user_id==self.id
            review.destroy
        end
       end
    end

 

end