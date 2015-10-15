class CreateMonthlyResults < ActiveRecord::Migration
  def change
    create_table :monthly_results do |t|
      t.date :release
      t.string :functionay
      t.string :image
      t.string :agency
      t.decimal :evaluation
      t.integer :place

      t.timestamps
    end
  end
end
