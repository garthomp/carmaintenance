class Car < ActiveRecord::Base
  validates :make, :model, :year, :mileage, presence: true
  has_many :jobs
end
