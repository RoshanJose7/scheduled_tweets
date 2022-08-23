# email:string
# password_digest:string

# password:string virtual
# password_confirmation:string virtual

class User < ApplicationRecord
	# Ruby inbuilt function
	# Compares password & password_confirmation
	# hashes it with bcrypt
	has_secure_password

	validates :email, uniqueness: true, presence: true, format: { with: /\A[^@\s]+@[^@\s]+\z/, message: "Invalid email address!" }
end
