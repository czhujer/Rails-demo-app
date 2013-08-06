class CreateAdminNews < ActiveRecord::Migration
  def change
    create_table :admin_news do |t|
      t.integer :id
      t.string :name
      t.text :content

      t.timestamps
    end
  end
end
