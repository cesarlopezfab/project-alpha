class CreatePiggyBanks < ActiveRecord::Migration[6.0]
  def change
    create_table :piggy_banks do |t|
      t.string :name
      t.decimal :amount, precision: 8, scale: 2

      t.timestamps
    end
  end
end
