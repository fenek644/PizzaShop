class CreateRoots < ActiveRecord::Migration[5.2]
  def change

    create_table :roots do |t|
      t.text :cart

      t.timestamps
    end


  end
end
