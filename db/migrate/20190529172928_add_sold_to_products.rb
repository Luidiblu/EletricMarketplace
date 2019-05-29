class AddSoldToProducts < ActiveRecord::Migration[5.2]
  def change
    add_column :products, :sold, :bool
  end
end
