class Reservation < ApplicationRecord
  belongs_to :restaurant
  validate :can_make

  def can_make
    unless restaurant.has_capacity?(partysize, day)
      errors.add(:base, "at max capacity for day")
    end
  end




end
