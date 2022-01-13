class ChangeJobStatusCompletedsToCompletedJobStatuses < ActiveRecord::Migration[7.0]
  def change
    rename_table :job_status_completeds, :completed_job_statuses
  end
end
