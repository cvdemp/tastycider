class CreateCiders < ActiveRecord::Migration
  def change
    create_table :ciders do |t|
      t.string :name, null: false
      t.string :brewery_name
      t.string :city
      t.string :state

      t.timestamps null: false
      t.index :name, unique: true
    end
  end
end
