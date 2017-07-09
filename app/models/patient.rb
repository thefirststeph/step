class Patient < ApplicationRecord
	has_many :requests
	has_many :issues, as: :issuable
	belongs_to :organization

	validates_presence_of :first_name, :last_name, :zip_code, :age, :sex, :language, :organization

	def full_name
		"#{self.first_name} #{self.last_name}"
	end

end
