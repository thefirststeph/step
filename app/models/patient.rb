class Patient < ApplicationRecord
	has_many :requests
	belongs_to :organization
end
