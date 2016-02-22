class CreateMedications < ActiveRecord::Migration
  def change
    create_table :medications do |t|
      t.string :name
      t.string :strength
      t.string :frequency
      t.references :client, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
