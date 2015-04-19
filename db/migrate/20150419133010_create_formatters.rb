class CreateFormatters < ActiveRecord::Migration
  def change
    create_table :formatters do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
