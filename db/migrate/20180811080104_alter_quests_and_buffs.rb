class AlterQuestsAndBuffs < ActiveRecord::Migration[5.0]

  def up
    drop_table :quest_types
    rename_table :quests, :daily_quests
    remove_column :daily_quests, :quest_type_id
    create_table :quest_streaks do |t|
      t.references :daily_quest
      t.integer :days, default: 7
    end
    rename_column :buffs, :quest_id, :quest_streak_id
    remove_column :buffs, :maintenance_quest_id
  end

  def down
    create_table :quest_types do |t|
      t.string :name
    end
    rename_table :daily_quests, :quests
    add_column :quests, :quest_type_id, :integer
    drop_table :quest_streaks
    rename_column :buffs, :quest_streak_id, :quest_id
    add_column :buffs, :maintenance_quest_id, :integer
  end
end
