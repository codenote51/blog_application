class CreateBanks < ActiveRecord::Migration[7.0]
  def change
    create_table :banks do |t|
      t.string :name
      t.string :lastname
      t.string :email
      t.text :city
      t.string :pin
      t.string :age

      t.timestamps
    end
  end
end
