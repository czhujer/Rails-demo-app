class AddCategoryIdReference3 < ActiveRecord::Migration
  def up
    remove_index :posts, :category_id
  end

  def down
  end
end
