class ChangeCaracteristicsFromStringToText < ActiveRecord::Migration[5.0]
  def change
    change_column :tools, :caracteristics, :text
  end
end
