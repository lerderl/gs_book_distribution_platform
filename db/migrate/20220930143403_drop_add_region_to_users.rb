class DropAddRegionToUsers < ActiveRecord::Migration[7.0]
  def change
    remove_column :users, :region_id, :int
  end
end
