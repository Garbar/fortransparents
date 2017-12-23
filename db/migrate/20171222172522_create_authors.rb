class CreateAuthors < ActiveRecord::Migration[5.1]
  def change
    create_table :authors do |t|
      t.string :name
      t.text :description
      t.string :slug
      t.string :avatar

      t.timestamps
    end
    add_index :authors, :slug, unique: true
  end
end
