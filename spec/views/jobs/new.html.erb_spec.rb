require 'rails_helper'

RSpec.describe "jobs/new", type: :view do
  before(:each) do
    assign(:job, Job.new(
      :job_name => "MyString",
      :serviced_at => 1,
      :notes => "MyText"
    ))
  end

  it "renders new job form" do
    render

    assert_select "form[action=?][method=?]", jobs_path, "post" do

      assert_select "input#job_job_name[name=?]", "job[job_name]"

      assert_select "input#job_serviced_at[name=?]", "job[serviced_at]"

      assert_select "textarea#job_notes[name=?]", "job[notes]"
    end
  end
end
