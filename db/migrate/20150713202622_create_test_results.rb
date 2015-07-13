class CreateTestResults < ActiveRecord::Migration
  def change
    create_table :test_results do |t|
      t.string :system_under_test
      t.boolean :passed
      t.string :run_by_whom
      t.text :test_details

      t.timestamps null: false
    end
  end
end
