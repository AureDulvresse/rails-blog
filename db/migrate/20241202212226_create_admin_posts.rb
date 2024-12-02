class CreateAdminPosts < ActiveRecord::Migration[7.2]
  def change
    create_table :admin_posts do |t|
      t.string :title
      t.string :description
      t.string :content
      t.references :category, null: false, foreign_key: true

      t.timestamps
    end
  end
end
