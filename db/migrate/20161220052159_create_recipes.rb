class CreateRecipes < ActiveRecord::Migration[5.0]
  def change
    create_table :recipes do |t|
      t.string :name
      t.text :description
      t.text :instructions
      t.integer :prep_time
      t.integer :cook_time
      t.integer :difficulty_level
      t.integer :yield
      t.string :image
      t.belongs_to :user, foreign_key: true

      t.timestamps
    end
  end
end
