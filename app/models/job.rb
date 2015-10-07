class Job < ActiveRecord::Base
  validates :job_name, :serviced_at, :car_id, presence: true
  belongs_to :car
end
