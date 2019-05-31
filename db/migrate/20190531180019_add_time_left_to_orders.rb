class AddTimeLeftToOrders < ActiveRecord::Migration[5.2]
  def change
    add_column :orders, :time_left, :string
  end
end
