require 'rails_helper'

RSpec.describe "jobs/show", type: :view do
  before(:each) do
    @job = assign(:job, Job.create!(
      :job_name => "Job Name",
      :serviced_at => 1,
      :notes => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Job Name/)
    expect(rendered).to match(/1/)
    expect(rendered).to match(/MyText/)
  end
end
