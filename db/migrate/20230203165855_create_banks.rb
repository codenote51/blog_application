class CreateBanks < ActiveRecord::Migration[7.0]
  def change
    create_table :banks do |t|
      t.string  :name
      t.string  :lastname
      t.string  :email
      t.string  :city
      t.string  :pin, limit: 8
      t.integer :age, 

      t.timestamps
    end
  end
end
