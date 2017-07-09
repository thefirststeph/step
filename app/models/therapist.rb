class Therapist < ApplicationRecord

	has_secure_password
	
	has_one :blacklist
	has_many :bookings

	validates_presence_of :pt_db_id, :status, :username, :password_digest
	validates_uniqueness_of :pt_db_id, :username

end
