class CreateIngredients < ActiveRecord::Migration[5.0]
  def change
    create_table :ingredients do |t|
      t.integer :quantity
      t.string :measurement
      t.string :item
      t.belongs_to :recipe, foreign_key: true

      t.timestamps
    end
  end
end
