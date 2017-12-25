class CreateTranslationForArticles < ActiveRecord::Migration[5.1]
  def up
    Article.create_translation_table!({
                                          title: :string,
                                          description: :text,
                                          body: :text}, {migrate_data: true})
  end

  def down
    Article.drop_translation_table! migrate_data: true
  end
end
