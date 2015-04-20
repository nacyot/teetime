class AddColumnsToExportedFiles < ActiveRecord::Migration
  def change
    add_reference :exported_files, :exported_format, index: true, foreign_key: true
    add_reference :exported_files, :formatter, index: true, foreign_key: true
  end
end
