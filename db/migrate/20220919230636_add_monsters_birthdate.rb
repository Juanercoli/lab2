class AddMonstersBirthdate < ActiveRecord::Migration[7.0]
  def change
    add_column :monsters, :birthdate, :date, default: "1900-1-1", null: false
  end
end
