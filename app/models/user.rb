class User < ApplicationRecord
    has_many :reviews
    has_many :users, through: :reviews

    has_secure_password

    validates :username, presence: true

    def to_s
        "#{self.first_name}" + " " + "#{self.last_name}"
    end 
    
end
