class AddPvToArticles < ActiveRecord::Migration[5.1]
  def change
    add_column :articles, :pv, :integer
  end
end
