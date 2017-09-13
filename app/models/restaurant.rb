class Restaurant < ApplicationRecord
  has_many :reservations

  # def capacity(date, hour)
  #   - find reservations on date
  #   - reservations on hour
  # end

  def has_capacity?(partysize, day)

    capacity - day_current_occs(day) - partysize >= 0
  end

  # def current_occs
  #   reservations.sum { |res| res.partysize }
  # end

  def day_current_occs(day)
    reservations.where(day: day).sum { |res| res.partysize }
  end
 






end
