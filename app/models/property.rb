class Property < ApplicationRecord
  validates :property_name, presence: true
  validates :price, presence: true
  validates :address, presence: true
  validates :age, presence: true
  validates :note, presence: true
end
