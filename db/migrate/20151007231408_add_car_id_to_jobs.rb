class AddCarIdToJobs < ActiveRecord::Migration
  def change
    add_column :jobs, :car_id, :integer
  end
end
