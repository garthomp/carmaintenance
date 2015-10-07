require 'rails_helper'

RSpec.describe "jobs/edit", type: :view do
  before(:each) do
    @job = assign(:job, Job.create!(
      :job_name => "MyString",
      :serviced_at => 1,
      :notes => "MyText"
    ))
  end

  it "renders the edit job form" do
    render

    assert_select "form[action=?][method=?]", job_path(@job), "post" do

      assert_select "input#job_job_name[name=?]", "job[job_name]"

      assert_select "input#job_serviced_at[name=?]", "job[serviced_at]"

      assert_select "textarea#job_notes[name=?]", "job[notes]"
    end
  end
end
