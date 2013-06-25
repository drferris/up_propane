namespace :db do
  desc "Fill database with sample data"
  task populate: :environment do
    make_user
    make_customers
    make_deliveries
  end
end

def make_user
  admin = User.create!(name: 'Super Admin',
                 email: "admin@example.com",
                 password: "password",
                 password_confirmation: "password")
end

def make_customers
	50.times do
		Customer.create!(name: Faker::Name.name,
					phone: Faker::PhoneNumber.phone_number,
					address: Faker::Address.street_address,
					city: Faker::Address.city,
					state: Faker::Address.state_abbr,
					zip: Faker::Address.zip_code)
	end
end

def make_deliveries
	2.times do
		customers = Customer.all
		customers.each { |customer| customer.deliveries.create!(amount: rand(100),
															date: '6/25/13',
															paid: [true, false].sample) }
	end
end