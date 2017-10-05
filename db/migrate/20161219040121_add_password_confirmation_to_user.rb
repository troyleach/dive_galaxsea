class AddPasswordConfirmationToUser < ActiveRecord::Migration
  def change
    add_column :users, :password_confirmation, :string

    User.all.each do |user|
      user.password_confirmation = user.password
      user.save!
    end
  end
end
