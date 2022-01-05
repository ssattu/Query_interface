class Customer < ApplicationRecord
	has_many:orders
	has_many:reviews

	validates :first_name, presence:true, length: {minimum:10}
end
