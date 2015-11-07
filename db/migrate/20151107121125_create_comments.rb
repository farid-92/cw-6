class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.text :post
      t.integer :scrore
      t.integer :user_id
      t.integer :photo_id

      t.timestamps null: false
    end
  end
end