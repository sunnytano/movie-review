class Movie < ApplicationRecord
    has_many :reviews
    has_many :users, through: :reviews 

    validates :title, presence: true

    def self.search(search)
            movie = Movie.find_by(title: search)
    end 

end
