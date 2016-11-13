class CreateUserDrinks < ActiveRecord::Migration[5.0]
  def change
    create_table :user_drinks do |t|
      t.references :user, foreign_key: true
      t.references :drink, foreign_key: true
      t.integer :quantity

      t.timestamps
    end
  end
end
