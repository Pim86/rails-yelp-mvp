class CreateRestaurants < ActiveRecord::Migration[7.1]
  def change
    create_table :restaurants do |t|
      t.string :address, null: false
      t.string :name, null: false
      t.string :phone_number
      t.string :category, null: false

      t.timestamps
    end
  end
end