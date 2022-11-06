class Review < ActiveRecord::Base
    belongs_to :user
    belongs_to :product

    def print_review
        
    end
end