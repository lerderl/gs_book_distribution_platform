class CreateGroupRegions < ActiveRecord::Migration[7.0]
  def change
    create_table :group_regions do |t|
      t.integer :group_id
      t.integer :region_id

      t.timestamps
    end
  end
end
