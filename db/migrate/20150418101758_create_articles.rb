class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :title
      t.text :text, null: false
      t.hstore :metadata
      t.references :bundle

      t.timestamps null: false
    end
  end
end
