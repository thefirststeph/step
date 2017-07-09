class Request < ApplicationRecord

	belongs_to :organization
	belongs_to :patient
	has_many :issues, as: :issuable

	validates_presence_of :organization_id, :patient_id, :time, :location
	
end
