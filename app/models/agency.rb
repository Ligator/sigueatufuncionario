class Agency < ActiveRecord::Base
	has_many :functionaries

	validates :name, :presence => true
end
