class User < ApplicationRecord
  has_secure_password
  has_many :locations
  has_many :movies, through: :location
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
