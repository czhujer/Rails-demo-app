class CreatePosts < ActiveRecord::Migration
  def change
    drop_table :posts
    
    create_table :posts do |t|
      t.string :name
      t.references :category
      t.text :content

      t.timestamps
    end
    add_index :posts, :category_id
  end
end
