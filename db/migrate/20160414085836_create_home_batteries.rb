class CreateHomeBatteries < ActiveRecord::Migration
  def change
    create_table :home_batteries do |t|

      t.timestamps null: false
    end
  end
end
