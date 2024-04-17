class User < ApplicationRecord
	
	has_secure_password

	# Verify that email field is not blank and that it doesn't already exist in the db (prevents duplicates):
	validates :email, presence: true, uniqueness: true
	validates :password, format: { with: /\A(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{8,}\z/, message: "deve conter pelo menos uma letra e um dígito, e ter no mínimo 8 caracteres" }

	
end