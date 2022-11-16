class Review < ApplicationRecord
  belongs_to :restaurant

  validates_associated :restaurant
  validates :content, presence: true
  validates :rating, inclusion: { in: (0..5) }
  validates :rating, numericality: { only_integer: true }
end

# Un avis doit appartenir à un restaurant.
# La note d’un avis doit être un nombre entre 0 et 5.
# La note d’un avis doit être un entier. Par exemple, un avis avec une note de 2,5 doit être invalide !
