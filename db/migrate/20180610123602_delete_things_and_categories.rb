class DeleteThingsAndCategories < ActiveRecord::Migration[5.0]
  def change
    drop_table :things
    drop_table :categories
  end
end
