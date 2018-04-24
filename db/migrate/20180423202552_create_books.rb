class CreateBooks < ActiveRecord::Migration[5.2]
  def change
    create_table :books do |t|
      t.string :title
      t.references :readable, polymorphic: true

      t.timestamps
    end
    add_index :books, [:readable_id, :readable_type]
  end
end
