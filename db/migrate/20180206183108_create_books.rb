class CreateBooks < ActiveRecord::Migration[5.1]
  def change
    create_table :books do |t|
      t.string :title, null: false
      t.string :author, null: false
      t.string :img_url, null: false
      t.string :publish_date, null: false
      t.text :description, null: false

      t.timestamps
    end

    add_index :books, :title, unique: true
  end
end
