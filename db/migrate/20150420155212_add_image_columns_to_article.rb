class AddImageColumnsToArticle < ActiveRecord::Migration
  def up
    add_column :articles, :title_image, :string
  end

  def down
    remove_column :articles, :title_image, :string
  end
end
