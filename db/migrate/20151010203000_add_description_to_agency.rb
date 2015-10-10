class AddDescriptionToAgency < ActiveRecord::Migration
  def change
    add_column :agencies, :description, :text
  end
end
