class CreateCategories < ActiveRecord::Migration[7.2]
  def change
    create_table :categories do |t|
      t.string :name
      t.text :description
      t.string :image
      t.timestamps
    end
    add_index :categories, :name, unique: true
  end
end
