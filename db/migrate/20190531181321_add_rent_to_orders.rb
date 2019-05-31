class AddRentToOrders < ActiveRecord::Migration[5.2]
  def change
    add_column :orders, :rent, :bool
  end
end
