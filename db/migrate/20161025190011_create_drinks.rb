class CreateDrinks < ActiveRecord::Migration[5.0]
  def change
    create_table :drinks do |t|
      t.references :user, foreign_key: true
      t.string :name
      t.integer :quantity
      t.integer :units
      t.decimal :price, precision: 8, scale: 2

      t.timestamps
    end
  end
end
