class User < ApplicationRecord
    has_many :reviews
    has_many :movies, through: :reviews

    validates :username, presence: true

    has_secure_password

    def to_s
        "#{self.first_name}" + " " + "#{self.last_name}"
    end 
    
end
