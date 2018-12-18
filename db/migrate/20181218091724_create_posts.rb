class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.string :title
      t.string :url
      t.text :description
      t.string :tags
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
