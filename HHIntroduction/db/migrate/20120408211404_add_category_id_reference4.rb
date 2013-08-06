class AddCategoryIdReference4 < ActiveRecord::Migration
  def change
     #add_column :tester, :user_id, :integer
     add_index :posts, :category_id
  end

  def down
  end
end
