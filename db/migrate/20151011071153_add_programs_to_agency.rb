class AddProgramsToAgency < ActiveRecord::Migration
  def change
    add_column :agencies, :programs, :text
  end
end
