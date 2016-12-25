class Recipe < ApplicationRecord
  belongs_to :user
  has_many :ingredients
  has_many :favorites

  accepts_nested_attributes_for :ingredients,
                                reject_if: proc { |attributes| attributes['name'].blank? },
                                allow_destroy: true

  validates :name, :description, :instructions, presence: true

  has_attached_file :image, styles: { medium: "400x400#", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
end
