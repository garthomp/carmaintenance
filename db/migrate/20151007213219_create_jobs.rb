class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
      t.string :job_name
      t.integer :serviced_at
      t.text :notes

      t.timestamps null: false
    end
  end
end
