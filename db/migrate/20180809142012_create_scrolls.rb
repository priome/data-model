class CreateScrolls < ActiveRecord::Migration[5.0]
  def change
    create_table :scrolls do |t|
      t.string :name
      t.text :effect
    end
  end
end
