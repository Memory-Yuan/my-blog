class CreateReplies < ActiveRecord::Migration
  def change
    create_table :replies do |t|
      t.string :name
      t.string :email
      t.string :website
      t.string :content
      t.references :article, index: true

      t.timestamps null: false
    end
    add_foreign_key :replies, :articles
  end
end
