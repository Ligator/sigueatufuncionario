class ChangeFunctionarySalaryToText < ActiveRecord::Migration
  def up
    change_column :functionaries, :salary, :text
  end
  def down
  end
end
