class User < ApplicationRecord
  has_many :recipes
  has_many :favorites
  
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
