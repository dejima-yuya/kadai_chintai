class Property < ApplicationRecord
  validates :property_name, presence: true
  validates :price, presence: true
  validates :address, presence: true
  validates :age, presence: true
  validates :note, presence: true
  validates_associated :closest_stations

  has_many :closest_stations, inverse_of: :property, dependent: :destroy
  accepts_nested_attributes_for :closest_stations
end
