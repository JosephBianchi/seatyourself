class ChangeColumnInRestToString < ActiveRecord::Migration[5.0]
  def change
    change_column :restaurants, :tele, :string
  end
end
