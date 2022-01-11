# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


#Entering Data in table customers
# rand =Random.new
100.times do 
	# customer = Customer.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, title: Faker::Name.prefix, email: Faker::Internet.email, visits:rand(1..5), order_count:rand(1..10))
	# supplier = Supplier.create(name: Faker::Name.unique.name)
	# author = Author.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, )
	# book = Book.create(title: Faker::Name.name, year_published:rand(1950..2021), isbn:Faker::Number.number(digits: 6).to_s, price:rand(50.00..1000.00), out_of_print:rand(0..1), views:rand(100..10000), supplier_id:rand(1..30), author_id:rand(1..30))
	# order = Order.create(date_submitted: Faker::Time.between(from: DateTime.now - 1, to: DateTime.now, format: :short), status:rand(0..3), subtotal:rand(100.00..1000.00), shipping:rand(50.00..80.00), customer_id:rand(1..30))
	end

# puts "Adding #{Customer.count} to Customer Table"
# puts "Adding #{Supplier.count} to Supplier Table"
# puts "Adding #{Author.count} to Author Table"
# puts "Adding #{Book.count} to book Table"
# puts "Adding #{Order.count} to order Table"



   # To Add 3 column value in one column row 

# Order.find_each do |o|
#   num = (o.subtotal  + o.shipping + o.tax)
#   o.update(total: num)
# end


  # To Calculate Percentage using other column value in one column row 

# Order.find_each do |o|
#   num = ((o.subtotal/100)*18)
#   o.update(total: num)
# end