class AddThings < ActiveRecord::Migration[5.0]
  def change
    create_table :things do |t|
      t.string :name
      t.text :description
      t.integer :category_id
    end
    add_index :things, :category_id
    create_table :categories do |t|
      t.string :name
    end
  end
end
