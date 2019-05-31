class AddRentToOrders < ActiveRecord::Migration[5.2]
  def change
    add_column :orders, :rent, :bool
    # add_column :products, :address, :text
  end
end
