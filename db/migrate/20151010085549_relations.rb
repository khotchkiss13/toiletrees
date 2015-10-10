class Relations < ActiveRecord::Migration
  def change
    add_column :reviews, :user_id, :integer
    add_column :reviews, :bathroom_id, :integer
  end
end
