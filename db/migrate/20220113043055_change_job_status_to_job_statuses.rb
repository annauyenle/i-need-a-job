class ChangeJobStatusToJobStatuses < ActiveRecord::Migration[7.0]
  def change
    rename_table :job_status, :job_statuses
  end
end
