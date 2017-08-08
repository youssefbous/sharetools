class ChangeDescriptionFromStringToText < ActiveRecord::Migration[5.0]
  def change
    change_column :tools, :description, :text
  end
end
