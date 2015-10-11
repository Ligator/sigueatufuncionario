class AddAgencyProgramsToQuestion < ActiveRecord::Migration
  def change
    add_column :questions, :agency_programs, :boolean
  end
end
