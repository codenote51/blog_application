class Order < ActiveRecord::Migration[7.0]
  def change
    create_table :orders do |t|
      t.string   :name
      t.string   :lastname
      t.string   :status, limit: 15
      t.string   :email
      
      t.timestamps
    end
  end
end
