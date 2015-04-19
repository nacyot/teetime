class CreatePublications < ActiveRecord::Migration
  def change
    create_table :publications do |t|
      t.references :article, index: true, foreign_key: true, null: false
      t.references :publish_target, index: true, foreign_key: true, null: false
      t.integer :status, null: false
      t.text :canonical_url
      t.hstore :metadata

      t.timestamps null: false
    end
  end
end
