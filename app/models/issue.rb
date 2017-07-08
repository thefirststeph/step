class Issue < ApplicationRecord
	belongs_to :issuable, polymorphic: true
end
