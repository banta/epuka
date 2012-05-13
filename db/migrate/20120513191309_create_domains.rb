class CreateDomains < ActiveRecord::Migration
  def change
    create_table :domains do |t|
			t.integer :user_id
      t.string :name
      t.text :more_info

      t.timestamps
    end
  end
end
