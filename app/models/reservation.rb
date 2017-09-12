class Reservation < ApplicationRecord
  belongs_to :restaurant
  validate :can_make

  def can_make
    unless restaurant.has_capacity?(partysize)
      errors.add(:base, "at max capacity")
    end
  end




end
