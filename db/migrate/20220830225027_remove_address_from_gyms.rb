class RemoveAddressFromGyms < ActiveRecord::Migration[7.0]
  def change
    remove_column :gyms, :address
  end
end
