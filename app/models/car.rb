class Car < ActiveRecord::Base
  validates :make, :model, :year, :mileage, presence: true
end
