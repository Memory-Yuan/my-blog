class AddReadToArticles < ActiveRecord::Migration
  def change
    add_column :articles, :read, :integer, default: 0
  end
end
