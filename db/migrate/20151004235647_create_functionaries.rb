class CreateFunctionaries < ActiveRecord::Migration
  def change
    create_table :functionaries do |t|
      t.string :fname
      t.string :lname
      t.string :photo
      t.references :agency, index: true
      t.string :charge
      t.string :salary
      t.text :schooling
      t.text :experience
      t.decimal :evaluation

      t.timestamps
    end
  end
end
