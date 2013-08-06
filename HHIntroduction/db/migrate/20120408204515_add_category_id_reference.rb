class AddCategoryIdReference < ActiveRecord::Migration
  def up

    remove_column :posts, :category_id
  
    change_table :posts do |t|
      t.references :category
#      remove_column :posts, :category_id
#      add_column :posts, :category, :references    
    end
  end

  def down
#    remove_column :posts, :category
#    add_column :posts, :category_id, :integer
  end
end
