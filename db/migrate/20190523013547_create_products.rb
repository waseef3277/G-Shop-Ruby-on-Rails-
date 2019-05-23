class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.string :name
      t.text :description
      t.string :brand
      t.decimal :price, default: 0

      t.timestamps
    end
  end
end
