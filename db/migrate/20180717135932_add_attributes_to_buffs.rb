class AddAttributesToBuffs < ActiveRecord::Migration[5.0]
  def change
    add_column :buffs, :maintenance_quest_id, :integer, default: 0
    add_index :buffs, :maintenance_quest_id
    add_column :buffs, :timeout, :integer, default: 1
  end
end
