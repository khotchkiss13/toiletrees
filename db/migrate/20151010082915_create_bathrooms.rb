class CreateBathrooms < ActiveRecord::Migration
  def change
    create_table :bathrooms do |t|
      t.integer :longitude
      t.integer :latitude
      t.string :location
      t.integer :floor_no
      t.integer :user_id
      t.datetime :post_time
      t.string :restroom_hours

      t.timestamps null: false
    end
  end
end
