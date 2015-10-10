class AverageReview < ActiveRecord::Migration
  def change
      add_column :bathrooms, :average_review, :integer
  end
end
