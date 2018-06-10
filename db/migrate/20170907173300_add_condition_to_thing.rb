class AddConditionToThing < ActiveRecord::Migration[5.0]
  def change
    add_column :things, :condition, :text
  end
end
