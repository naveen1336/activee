class Addcolumntoproducts < ActiveRecord::Migration
  def change
  	add_column :products , :released_at , :date
  end
end
