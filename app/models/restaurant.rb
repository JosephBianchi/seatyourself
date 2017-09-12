class Restaurant < ApplicationRecord
  has_many :reservations

  # def capacity(date, hour)
  #   - find reservations on date
  #   - reservations on hour
  # end

  def has_capacity?(partysize)

    capacity - current_occs - partysize >= 0
  end

  def current_occs
    reservations.sum { |res| res.partysize }
  end


end
