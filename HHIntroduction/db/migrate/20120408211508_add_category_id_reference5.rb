class AddCategoryIdReference5 < ActiveRecord::Migration
  def up
    remove_index :posts, :category_id
    
    remove_column :posts, :category_id
    
    change_table :posts do |t|
              t.references :category
    end
              
    #add_column :posts, :category, :references

  end

  def down
  end
end
