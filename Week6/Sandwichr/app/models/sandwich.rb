class Sandwich < ApplicationRecord
  has_many :sandwich_ingredients
  has_many :ingredients, through: "sandwich_ingredients"
end

# Once this is wired you can treat as if it was just two tables.
