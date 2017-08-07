class CreateTools < ActiveRecord::Migration[5.0]
  def change
    create_table :tools do |t|
      t.string :title, null: false
      t.string :caracteristics, null: false
      t.string :description, null: false
      t.integer :price_per_day, null: false
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
