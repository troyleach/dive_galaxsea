class CreateVacations < ActiveRecord::Migration
  def change
    create_table :vacations do |t|
      t.references :user, index: true, foreign_key: true
      t.text :dates_array, array:true, default: []

      t.timestamps null: false
    end
  end
end
