class CreateBundles < ActiveRecord::Migration
  def change
    create_table :bundles do |t|
      t.string :name
      t.text :description
      t.references :team, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
