class AddQuests < ActiveRecord::Migration[5.0]
  def change
    create_table :quests do |t|
      t.string :name
      t.text :description
    end
  end
end
