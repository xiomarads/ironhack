class Concert < ApplicationRecord
  validates :artist, { presence: true }
  validates :venue, { presence: true }
  validates :city, { presence: true }
  validates :date, { presence: true }
  validates :price, { numericality: true }
end
