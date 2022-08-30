class Gym < ApplicationRecord
  validates :name, presence: true
  validates :amount_of_times, presence: true
end
