class CreateExportedFormats < ActiveRecord::Migration
  def change
    create_table :exported_formats do |t|
      t.string :name
      t.string :extention

      t.timestamps null: false
    end
  end
end
