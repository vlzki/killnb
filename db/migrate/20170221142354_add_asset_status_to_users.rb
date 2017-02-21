class AddAssetStatusToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :asset_status, :boolean, default: true
  end
end
