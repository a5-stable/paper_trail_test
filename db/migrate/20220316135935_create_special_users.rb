class CreateSpecialUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :special_users do |t|
      t.string :name
      t.integer :age
      t.string :description
      t.string :favorite_food
      t.boolean :published

      t.timestamps
    end
  end
end
