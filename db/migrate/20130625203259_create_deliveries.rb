class CreateDeliveries < ActiveRecord::Migration
  def change
    create_table :deliveries do |t|
      t.integer :amount
      t.DateTime :date
      t.boolean :paid

      t.timestamps
    end
  end
end
