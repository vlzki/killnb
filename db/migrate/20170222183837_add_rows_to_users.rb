class AddRowsToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :profile_description, :text
    add_column :users, :number_of_kills, :string
    add_column :users, :xp_level, :string
  end
end
