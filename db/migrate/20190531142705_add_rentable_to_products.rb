class AddRentableToProducts < ActiveRecord::Migration[5.2]
  def change
    add_column :products, :rentable, :bool
  end
end
