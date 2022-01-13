class CreateJobStatusCompleteds < ActiveRecord::Migration[7.0]
  def change
    create_table :job_status_completeds do |t|
      t.belongs_to :job, null: false, foreign_key: true
      t.belongs_to :job_status, null: false, foreign_key: true

      t.timestamps
    end
  end
end
