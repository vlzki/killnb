class ChangeAssetNameAndType < ActiveRecord::Migration[5.0]
  def change

  	rename_column :users, :asset_profil, :asset, :boolean

  end
end
