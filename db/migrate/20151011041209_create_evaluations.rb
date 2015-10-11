class CreateEvaluations < ActiveRecord::Migration
  def change
    create_table :evaluations do |t|
      t.references :user, index: true
      t.references :question, index: true
      t.references :functionary, index: true
      t.integer :evaluation, default: 0

      t.timestamps
    end
  end
end
