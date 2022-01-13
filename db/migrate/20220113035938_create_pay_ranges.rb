class CreatePayRanges < ActiveRecord::Migration[7.0]
  def change
    create_table :pay_ranges do |t|
      t.string :range

      t.timestamps
    end
  end
end
