class CreatePublishTargets < ActiveRecord::Migration
  def change
    create_table :publish_targets do |t|
      t.references :bundle, null: false, index: true, foreign_key: true
      t.string :name, null: false
      t.references :publisher, null: false, index: true, foreign_key: true
      t.string :url
      t.boolean :is_main

      t.timestamps null: false
    end
  end
end
