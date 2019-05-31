class AddColumAddressToProducts < ActiveRecord::Migration[5.2]
  def change
    add_column :products, :address, :text
  end
end
