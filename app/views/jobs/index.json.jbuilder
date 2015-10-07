json.array!(@jobs) do |job|
  json.extract! job, :id, :job_name, :serviced_at, :notes
  json.url job_url(job, format: :json)
end
