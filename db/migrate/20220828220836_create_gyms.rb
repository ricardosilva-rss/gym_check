class CreateGyms < ActiveRecord::Migration[7.0]
  def change
    create_table :gyms do |t|
      t.string :name
      t.string :address
      t.integer :amount_of_times

      t.timestamps
    end
  end
end
