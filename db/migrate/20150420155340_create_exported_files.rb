class CreateExportedFiles < ActiveRecord::Migration
  def change
    create_table :exported_files do |t|
      t.string :file, null: false
      t.references :article, index: true, foreign_key: true
      t.string :title
      t.text :url

      t.timestamps null: false
    end
  end
end
