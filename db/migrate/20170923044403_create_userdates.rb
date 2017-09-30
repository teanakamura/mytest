class CreateUserdates < ActiveRecord::Migration[5.1]
  def change
    create_table :userdates do |t|
      t.string :email
      t.string :pass

      t.timestamps
    end
  end
end
