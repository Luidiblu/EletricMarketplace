class AddBillingPeriodToProducts < ActiveRecord::Migration[5.2]
  def change
    add_column :products, :billing_period, :string
  end
end
