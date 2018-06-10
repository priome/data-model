class CreateResourceItems < ActiveRecord::Migration[5.0]
  def change
    create_table :resource_items do |t|
      t.string :title
      t.text :description
      t.string :url
      t.integer :evidence_level, default: 0
      t.references :quest
    end
  end
end
