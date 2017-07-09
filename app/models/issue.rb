class Issue < ApplicationRecord

	belongs_to :issuable, polymorphic: true

	validates_presence_of :issuable_type, :issuable_id

end
