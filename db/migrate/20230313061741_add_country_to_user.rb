class AddCountryToUser < ActiveRecord::Migration[7.0]
  def change
    # add_column :users, :country_id, :integer
    add_reference :users, :country, index: true
  end
end
