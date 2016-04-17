class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :phone
      t.string :password
      t.string :auth_token
      t.boolean :admin, default: false
      t.text :comments

      t.timestamps null: false
    end
  end
end
