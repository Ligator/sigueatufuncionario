class Agency < ActiveRecord::Base
	has_one :functionary

	validates :name, :presence => true
	validates :ordering, :presence => true

	def contact
		"Teléfono: " + phone + ". Dirección: " + address + "."
	end
end
