class CreateListItems < ActiveRecord::Migration[5.0]
  def change
    create_table :list_items do |t|
      t.references :list, foreign_key: true
      t.string :name
      t.string :description
      t.boolean :active, default: true

      t.timestamps
    end
  end
end
