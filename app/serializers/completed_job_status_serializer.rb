class CompletedJobStatusSerializer
  include FastJsonapi::ObjectSerializer
  attributes :job_id, :job_status_id
end
