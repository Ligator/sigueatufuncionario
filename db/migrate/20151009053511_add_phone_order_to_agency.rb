class AddPhoneOrderToAgency < ActiveRecord::Migration
  def change
    add_column :agencies, :phone, :string
    add_column :agencies, :order, :integer
  end
end
