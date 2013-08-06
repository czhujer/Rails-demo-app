class RenameTableNews < ActiveRecord::Migration
  def up
    rename_table :admin_news, :news
  end

  def down
    rename_table :news, :admin_news
  end
end
