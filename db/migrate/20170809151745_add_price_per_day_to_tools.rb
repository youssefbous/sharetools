class AddPricePerDayToTools < ActiveRecord::Migration[5.0]
  def change
    add_column :tools, :price_per_day, :float
  end
end
