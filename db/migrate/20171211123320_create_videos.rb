class CreateVideos < ActiveRecord::Migration[5.1]
  def change
    create_table :videos do |t|
      t.string :title
      t.text :body
      t.text :description
      t.datetime :published_at
      t.string :slug

      t.timestamps
    end
    add_index :videos, :slug, unique: true
  end
end
