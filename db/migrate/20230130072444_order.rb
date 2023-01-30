class Order < ActiveRecord::Migration[7.0]
  def change
    create_table :orders do |t|
      t.string :name
      t.text :lastname
      t.text :email
      
      t.timestamps
    end
  end
end
