class CreateCarModels < ActiveRecord::Migration
  def change
    create_table :car_models do |t|

      t.timestamps null: false
    end
  end
end
