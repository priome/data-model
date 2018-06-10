class CreateBuffs < ActiveRecord::Migration[5.0]
  def change
    create_table :buffs do |t|
      t.string :name
      t.string :effect
      t.references :quest
      t.text :description
    end
  end
end
