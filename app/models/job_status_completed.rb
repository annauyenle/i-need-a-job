class JobStatusCompleted < ApplicationRecord
  belongs_to :job
  belongs_to :job_status
end
