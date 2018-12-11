class AddAuthorToStory < ActiveRecord::Migration[5.1]
  def change
    add_reference :stories, :author, foreign_key: true
  end
end
