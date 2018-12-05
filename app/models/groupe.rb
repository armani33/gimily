class Groupe < ApplicationRecord
  belongs_to :user
  has_many :groupe_baskets
end
