class AddTypeToArticle < ActiveRecord::Migration
  def change
    add_column :articles, :type, :string
    add_index :articles, :type
  end
end
