class Question < ActiveRecord::Base
	validates :question, :presence => true
end
