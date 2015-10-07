class RemoveDetailsFromJobs < ActiveRecord::Migration
  def change
    remove_column :jobs, :recurring, :boolean
    remove_column :jobs, :job_interval, :integer
  end
end
