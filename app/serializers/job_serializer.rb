class JobSerializer
  include FastJsonapi::ObjectSerializer
  attributes :url, :job_title, :location_id, :pay_range_id, :company_id, :job_status_id, :user_id
end
