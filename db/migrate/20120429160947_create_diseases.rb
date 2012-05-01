class CreateDiseases < ActiveRecord::Migration
  def change
    create_table :diseases do |t|
      t.string :name
      t.string :location
      t.float :latitude
      t.float :longitude
      t.string :reported_cases
      t.string :transmission_mode
      t.string :signs
      t.text :more_info

      t.timestamps
    end
  end
end
