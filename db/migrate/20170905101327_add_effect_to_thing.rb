class AddEffectToThing < ActiveRecord::Migration[5.0]
  def change
    add_column :things, :effect, :text
  end
end
