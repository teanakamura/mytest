class CreateArticles < ActiveRecord::Migration[5.1]
  def change
    create_table :articles do |t|
      t.string :user
      t.string :string
      t.string :title
      t.string :string
      t.string :body

      t.timestamps
    end
  end
end
