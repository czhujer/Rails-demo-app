class AddCategoryIdReference2 < ActiveRecord::Migration
  def up
     #remove_column :posts, :category_id
     #add_column :posts, :category, :references
     add_index :posts, :category_id
  end

  def down
#    remove_column :posts, :category_id
#    add_column :posts, :category_id, :integer
     remove_index :posts, :category_id
  end
end
