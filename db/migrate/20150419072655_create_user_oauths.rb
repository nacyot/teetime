class CreateUserOauths < ActiveRecord::Migration
  def change
    create_table :user_oauths do |t|
      t.text :client_key
      t.text :secret_key
      t.references :publisher, index: true, foreign_key: true, null: false
      t.references :team, index: true, foreign_key: true, null: false

      t.timestamps null: false
    end
  end
end
