class CreateAgencies < ActiveRecord::Migration
  def change
    create_table :agencies do |t|
      t.string :name
      t.text :address
      t.text :target
      t.string :latitude
      t.string :longitude
      t.string :logo

      t.timestamps
    end
  end
end
