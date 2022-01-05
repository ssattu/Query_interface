class UserDetail < ApplicationRecord
	
	validates :first_name, length: {minimum:3, message:"have more than three character"}, format: {with:/\A[A-Za-z]+\z/,  message:"Only Allows character"}
	
	validates :last_name, length: {minimum:3, message:"have more than three character"}, format: {with:/\A[A-Za-z]+\z/,  message:"Only Allows character"}
	
	validates :phone_no, uniqueness:true, length: {is:10, message:"have 10 digits only"}, format: {with:/\A[0-9]{10}\z/, message:"Only Allows number (0-9) and must be of 10 digits"}
	
	validates :profile_bio, length: {minimum:30, message:"should have more than 30 characters"}
	
	validates :address, length: {minimum:20, message:"have more than 20 characters"}
	
	validates :password, length: {in:6..20, message:"must be more than 6 characters and less than 20 characters"}, format: {with:/\A(?=.*[a-z])(?=.*[A-Z])(?=.*\d)[a-zA-Z\d@$!%*#?&]{6,}\z/,  message:"must contains atleast 1 uppercase character, atleast 1 lowercase character, atleast 1 digit, and atleast 1 special character."}
	
	validates :email, uniqueness:true, format: {with:/\A[a-z0-9.\-_]+\@[a-z]+\.(com|org|co.in|in)\z/,  message:"is not valid, please enter valid email"}
	
	validates :alt_phone_no, length: {is:10, message:"have 10 digits only"}, format: {with:/\A[0-9]{10}\z/, message:"Only Allows number (0-9) and must be of 10 digits"}, allow_blank:true
	
	validates :alt_email, format: {with:/\A[a-z0-9.\-_]+\@[a-z]+\.(com|org|co.in|in)\z/,  message:"is not valid, please enter valid email"}, allow_blank:true

	validates :pan_no, presence:{message:"Required for customer"}, format: {with:/\A[A-Za-z]{5}[0-9]{4}[A-Za-z]\z/,  message:"is not valid, please enter valid Pan Number"}, if: :check	

	validates :aadhar_no, presence:{message:"Required for customer"}, if: :check

	validates :aadhar_no, format: {with:/\A[0-9]{4}-[0-9]{4}-[0-9]{4}\z/,  message:"is not valid, please enter valid Aadhar Number"}

	enum :user_type, [:admin, :customer]

	def check
		user_type=="customer"
	end

	
	validates :first_name, 
						:last_name,
						:phone_no, 
						:profile_bio, 
						:address, :email, 
						:password,  
						:user_type, 
						presence: {message:"Must be filled"}

end