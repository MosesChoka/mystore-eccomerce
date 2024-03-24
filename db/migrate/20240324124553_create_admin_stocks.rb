class CreateAdminStocks < ActiveRecord::Migration[7.0]
  def change
    create_table :stocks do |t|
      t.references :product, null: false, foreign_key: true
      t.string :size
      t.integer :amount

      t.timestamps
    end
  end
end
