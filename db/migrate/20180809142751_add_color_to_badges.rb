class AddColorToBadges < ActiveRecord::Migration[5.0]
  def change
    add_column :badges, :color, :string, default: :copper
  end
end
