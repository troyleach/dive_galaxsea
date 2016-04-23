class CreateMiscellaneousPricings < ActiveRecord::Migration
  def change
    create_table :miscellaneous_pricings do |t|
      t.string :title
      t.decimal :price
      t.text :description

      t.timestamps null: false
    end
  end
end
