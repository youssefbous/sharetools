class AddAddressIntoTools < ActiveRecord::Migration[5.0]
  def change
    add_column :tools, :address, :string
  end
end
