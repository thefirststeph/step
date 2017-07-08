class Therapist < ApplicationRecord

	has_secure_password
	
	has_one :blacklist
	has_many :bookings
end
