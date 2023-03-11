class Article < ActiveRecord::Migration[7.0]
  def change
    create_table :articles do |t|
      t.string  :title
      t.string  :status, limit: 15
      t.text    :body
      t.integer :number

      t.timestamps
    end
  end
end
