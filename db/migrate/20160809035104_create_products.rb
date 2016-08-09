class CreateProducts < ActiveRecord::Migration
  def up
    create_table :products do |t|
      t.string :name
      t.integer :price
      t.references :category
      t.timestamps null: false
    end
  end
  def down
  drop_table :products
  end

end
