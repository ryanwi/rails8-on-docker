class AddStatusToArticles < ActiveRecord::Migration[8.0]
  def change
    add_column :articles, :status, :string
  end
end
