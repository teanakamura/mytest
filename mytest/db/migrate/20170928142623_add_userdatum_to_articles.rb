class AddUserdatumToArticles < ActiveRecord::Migration[5.1]
  def change
    add_reference :articles, :userdatum, foreign_key: true
  end
end
