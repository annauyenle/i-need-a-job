class CreateJobs < ActiveRecord::Migration[7.0]
  def change
    create_table :jobs do |t|
      t.string :url
      t.string :job_title
      t.belongs_to :location, null: false, foreign_key: true
      t.belongs_to :pay_range, null: false, foreign_key: true
      t.belongs_to :company, null: false, foreign_key: true
      t.belongs_to :job_status, null: false, foreign_key: true
      t.belongs_to :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
