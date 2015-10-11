class FixColumnOrderName < ActiveRecord::Migration
  def change
  	rename_column :agencies, :order, :ordering
  end
end
