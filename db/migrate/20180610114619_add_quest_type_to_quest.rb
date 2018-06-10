class AddQuestTypeToQuest < ActiveRecord::Migration[5.0]
  def change
    create_table :quest_types do |t|
      t.string :name
    end
    add_column :quests, :quest_type_id, :integer
    add_index :quests, :quest_type_id
  end
end
