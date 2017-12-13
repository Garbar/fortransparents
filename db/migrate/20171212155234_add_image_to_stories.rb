class AddImageToStories < ActiveRecord::Migration[5.1]
  def change
    add_column :stories, :image, :string
    add_column :articles, :image, :string
  end
end
