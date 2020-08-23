class Review < ApplicationRecord
  belongs_to :cocktail

  validates :rating, :content, presence: true
end
