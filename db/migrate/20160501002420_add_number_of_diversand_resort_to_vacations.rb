class AddNumberOfDiversandResortToVacations < ActiveRecord::Migration
  def change
    add_column :vacations, :number_of_divers, :integer
    add_column :vacations, :resort, :string
  end
end
