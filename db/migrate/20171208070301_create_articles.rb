class CreateArticles < ActiveRecord::Migration[5.1]
  def change
    create_table :articles do |t|
      t.string :title
      t.text :body
      t.text :description
      t.datetime :published_at
      t.string :slug
      t.index :slug, unique: true, using: :btree

      t.timestamps
    end
  end
end
