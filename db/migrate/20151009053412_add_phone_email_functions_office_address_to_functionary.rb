class AddPhoneEmailFunctionsOfficeAddressToFunctionary < ActiveRecord::Migration
  def change
    add_column :functionaries, :phone, :string
    add_column :functionaries, :email, :string
    add_column :functionaries, :functions, :text
    add_column :functionaries, :office_address, :text
  end
end
