class Question < ActiveRecord::Base
	has_many :evaluations
	validates :question, :presence => true
end
