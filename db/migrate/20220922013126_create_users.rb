class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :username, null: false, default: ""
      t.string :password, null: false, default: ""

      t.timestamps
    end

    add_index :users, :username, unique: true
    add_index :users, :password, unique: true
  end
end
