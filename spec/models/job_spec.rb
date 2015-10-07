require 'rails_helper'

RSpec.describe Job, type: :model do
  let(:job) do
    Job.new(job_name: "Change tires", serviced_at: 12000, notes: "Some notes", car_id: 1)
  end

  it 'is valid' do
    expect(job).to be_valid
  end

  it 'is invalid without job_name' do
    job.job_name = nil
    expect(job).to_not be_valid
  end

  it 'is invalid without serviced_at' do
    job.serviced_at = nil
    expect(job).to_not be_valid
  end

  it 'is invalid without car_id' do
    job.car_id = nil
    expect(job).to_not be_valid
  end
end
