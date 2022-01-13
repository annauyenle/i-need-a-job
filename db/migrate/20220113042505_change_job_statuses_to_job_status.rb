class ChangeJobStatusesToJobStatus < ActiveRecord::Migration[7.0]
  def change
    rename_table :job_statuses, :job_status
  end
end
