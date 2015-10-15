class Functionary < ActiveRecord::Base
	belongs_to :agency
	has_many :evaluations

	validates :fname, :presence => true
	validates :lname, :presence => true

	def fullname
		fname + " " + lname
	end

	def contact
		return "Teléfono: " + phone + ". Email: " + email + ". Oficina: " + office_address + "."
	end
end
