class CreateDivings < ActiveRecord::Migration
  def change
    create_table :divings do |t|
      t.string :title
      t.decimal :price
      t.text :description

      t.timestamps null: false
    end
  end
end
