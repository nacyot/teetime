class CreateAttachments < ActiveRecord::Migration
  def change
    create_table :attachments do |t|
      t.string :file, null: false
      t.references :article, index: true, foreign_key: true
      t.string :title
      t.text :description
      t.text :url

      t.timestamps null: false
    end
  end
end
