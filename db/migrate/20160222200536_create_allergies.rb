class CreateAllergies < ActiveRecord::Migration
  def change
    create_table :allergies do |t|
      t.string :type
      t.text :reaction
      t.references :client, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
