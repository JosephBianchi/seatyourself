class Changedataypes < ActiveRecord::Migration[5.0]
  def change
    change_table :reservations do |t|
      t.string :day
      t.integer :time

      remove_column :reservations, :restime,:datetime
    end
  end
end
