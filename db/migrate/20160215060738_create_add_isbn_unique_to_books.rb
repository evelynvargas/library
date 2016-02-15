class CreateAddIsbnUniqueToBooks < ActiveRecord::Migration
  def change
    create_table :add_isbn_unique_to_books do |t|
      add_index :books, :isbn, unique: true
      t.timestamps null: false
    end
  end
end
