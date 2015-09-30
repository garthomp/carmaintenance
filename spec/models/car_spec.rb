require 'rails_helper'

RSpec.describe Car, type: :model do
  let(:car) do
    Car.new(make: "Toyota", model: "Corolla", year: 2003, mileage: 190003)
  end

  it 'is valid' do
    expect(car).to be_valid
  end

  it 'is invalid without a make' do
    car.make = nil
    expect(car).to be_invalid
  end

  it 'is invalid without a model' do
    car.model = nil
    expect(car).to be_invalid
  end

  it 'is invalid without a year' do
    car.year = nil
    expect(car).to be_invalid
  end

  it 'is invalid without a mileage' do
    car.mileage = nil
    expect(car).to be_invalid
  end
end
