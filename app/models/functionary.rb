class Functionary < ActiveRecord::Base
  belongs_to :agency

  validates :fname, :presence => true
  validates :lname, :presence => true
end
