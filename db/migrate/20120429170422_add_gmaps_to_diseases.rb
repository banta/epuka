class AddGmapsToDiseases < ActiveRecord::Migration
  def change
    add_column :diseases, :gmaps, :boolean
  end
end
