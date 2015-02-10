class CreateWishes < ActiveRecord::Migration
  def change
    create_table :wishes do |t|
      t.integer :wish_type
      t.integer :done
      t.text :content
      t.references :user, index: true

      t.timestamps null: false
    end
    add_foreign_key :wishes, :users
  end
end
