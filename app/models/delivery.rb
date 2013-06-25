class Delivery < ActiveRecord::Base
  attr_accessible :amount, :date, :paid, :customer_id

  belongs_to :customer
end
