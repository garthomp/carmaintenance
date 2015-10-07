class Job < ActiveRecord::Base
  validates :job_name, :serviced_at, presence: true
end
