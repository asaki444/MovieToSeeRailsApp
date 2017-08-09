class Location < ApplicationRecord
    validates :city, presence: true
    belongs_to :user
    belongs_to :movie

    def self.most_popular_location
      distinct.count(:user).asc.limit(1)
    end
end

