class Restaurant < ApplicationRecord
  has_many :reservations

  # def capacity(date, hour)
  #   - find reservations on date
  #   - reservations on hour
  # end

  def has_capacity?(partysize)
    capacity - partysize >= 0
  end


end
