class AddTrainingObjectsToVacation < ActiveRecord::Migration
  def change
    add_column :vacations, :training_objects, :jsonb, default: {}
  end
end
