class AddDivingObjectsToVacation < ActiveRecord::Migration
  def change
    add_column :vacations, :diving_objects, :jsonb, default: {}
  end
end
