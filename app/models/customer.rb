class Customer < ActiveRecord::Base
  attr_accessible :name, :phone, :address, :city, :state, :zip

  has_many :deliveries, dependent: :destroy
end
