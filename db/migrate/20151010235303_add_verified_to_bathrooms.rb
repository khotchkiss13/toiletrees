class AddVerifiedToBathrooms < ActiveRecord::Migration
  def change
    add_column :bathrooms, :number_verified, :integer
    add_column :bathrooms, :verified, :boolean
  end
end
