class CreateIdeas < ActiveRecord::Migration
  def change
    create_table :ideas do |t|
      t.string :title
      t.text :text, null: false
      t.references :bundle, index: true, foreign_key: true, null: false
      t.integer :score
      t.hstore :metadata

      t.timestamps null: false
    end
  end
end
