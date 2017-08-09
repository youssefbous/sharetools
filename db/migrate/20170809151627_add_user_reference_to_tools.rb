class AddUserReferenceToTools < ActiveRecord::Migration[5.0]
  def change
    add_reference :tools, :user, foreign_key: true
  end
end
