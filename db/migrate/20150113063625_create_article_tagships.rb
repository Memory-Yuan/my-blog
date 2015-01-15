class CreateArticleTagships < ActiveRecord::Migration
  def change
    create_table :article_tagships do |t|
      t.references :article, index: true
      t.references :tag, index: true

      t.timestamps null: false
    end
    add_foreign_key :article_tagships, :articles
    add_foreign_key :article_tagships, :tags
  end
end
