class CreateOrders < ActiveRecord::Migration[5.2]
  def change

    create_table :orders do |t|
      t.text :cart
      t.decimal :price
      t.string :name
      t.string :phone
      t.string :address

      t.timestamps
    end

  end
end
