class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.text :question
      t.boolean :agency_target
      t.boolean :agency_description
      t.boolean :agency_contact
      t.boolean :functionary_functions
      t.boolean :functionary_schooling
      t.boolean :functionary_experience
      t.boolean :functionary_salary
      t.boolean :functionary_contact

      t.timestamps
    end
  end
end
