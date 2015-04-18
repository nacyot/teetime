class CreatePublishTargets < ActiveRecord::Migration
  def change
    create_table :publish_targets do |t|
      t.references :bundle, null: false
      t.string :name, null: false
      t.references :publisher, null: false
      t.string :url
      t.boolean :is_main

      t.timestamps null: false
    end
  end
end
