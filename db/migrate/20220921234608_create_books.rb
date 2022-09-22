class CreateBooks < ActiveRecord::Migration[7.0]
  def change
    create_table :books do |t|
      t.string :region, null: false, default: ""
      t.integer :price, null: false, default: ""
      t.integer :qty_allotted, null: false, default: ""
      t.integer :amt_allotted, null: false, default: ""
      t.integer :qty_paid, default: ""
      t.integer :amt_paid, default: ""
      t.integer :qty_bal, null: false, default: ""
      t.integer :amt_bal, null: false, default: ""

      t.timestamps
    end
  end
end
