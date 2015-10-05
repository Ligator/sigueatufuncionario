class Agency < ActiveRecord::Base
	has_one :functionary

	validates :name, :presence => true
end
