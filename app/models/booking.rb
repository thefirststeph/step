class Booking < ApplicationRecord
	belongs_to :request
	belongs_to :therapist
end
