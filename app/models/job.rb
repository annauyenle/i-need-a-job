class Job < ApplicationRecord
  belongs_to :location
  belongs_to :pay_range
  belongs_to :company
  belongs_to :job_status
  belongs_to :user
end
