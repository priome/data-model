class CreateEffects < ActiveRecord::Migration[5.0]
  def change
    create_table :effects do |t|
      t.string :name
    end
    create_table :buff_effects do |t|
      t.references :buff
      t.references :effect
      t.decimal :amount, precision: 3, scale: 2
    end
    remove_column :buffs, :effect, :text
  end
end
