class Offer < ApplicationRecord
  has_many :products ,through: :products_offers
end
