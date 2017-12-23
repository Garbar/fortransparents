class AddAuthorToVideo < ActiveRecord::Migration[5.1]
  def change
    add_reference :videos, :author, foreign_key: true
  end
end
