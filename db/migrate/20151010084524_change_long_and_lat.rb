class ChangeLongAndLat < ActiveRecord::Migration
  def change
    remove_column :bathrooms, :longitude
    remove_column :bathrooms, :latitude
    add_column :bathrooms, :longitude, :decimal
    add_column :bathrooms, :latitude, :decimal
  end
end
