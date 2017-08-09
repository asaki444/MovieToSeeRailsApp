class Movie < ApplicationRecord
    validates :name, :description, presence: true
    has_many :locations
    has_many :users, through: :locations

    def self.popular
      group("users.id").count("(users.id) DESC").limit(1)
    end
end
