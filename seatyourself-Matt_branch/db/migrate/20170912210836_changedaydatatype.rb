class Changedaydatatype < ActiveRecord::Migration[5.0]
  def change
    remove_column :reservations, :day,:string
    add_column :reservations, :day,:date
  end
end
