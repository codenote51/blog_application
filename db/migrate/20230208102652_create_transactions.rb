class CreateTransactions < ActiveRecord::Migration[7.0]
  def change
    create_table :transactions do |t|
      t.string :form
      t.text :to
      t.references :bank, null: false, foreign_key: true

      t.timestamps
    end
  end
end
