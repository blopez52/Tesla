class CreateTestDrives < ActiveRecord::Migration
  def change
    create_table :test_drives do |t|

      t.timestamps null: false
    end
  end
end
