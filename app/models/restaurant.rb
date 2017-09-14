class Restaurant < ApplicationRecord
  has_many :reservations
  has_many :users, through: :reservations


  # def capacity(date, hour)
  #   - find reservations on date
  #   - reservations on hour
  # end

  def has_capacity?(partysize, day, time)

    capacity - day_current_occs(day, time) - partysize >= 0
  end
#
  # def current_occs
  #   reservations.sum { |res| res.partysize }
  # end

  def day_current_occs(day, time)
    reservations.where(day: day).where(time: time).sum { |res| res.partysize }
  end








end
