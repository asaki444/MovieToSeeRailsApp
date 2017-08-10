class Movie < ApplicationRecord
    validates :name, :description, presence: true
    has_many :locations
    has_many :users, through: :locations
    accepts_nested_attributes_for :locations
    
    def locations_attributes=(locations_attributes)
        locations_attributes.values.each do |location_attribute|
        location = Location.find_or_create_by(location_attribute)
        self.locations << location
        end
    end

    def self.popular
      group("users.id").count("(users.id) DESC").limit(1)
    end

end
