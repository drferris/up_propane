class AddCustomerIdToDeliveries < ActiveRecord::Migration
  def change
    add_column :deliveries, :customer_id, :integer
  end
end
