class Product < ApplicationRecord

  validates :name, presence: true
  validates :price, presence: true
  validates :short_description, presence: true
  validates :long_description, presence: true

end
