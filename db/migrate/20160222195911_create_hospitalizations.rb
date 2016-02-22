class CreateHospitalizations < ActiveRecord::Migration
  def change
    create_table :hospitalizations do |t|
      t.text :hospitalization_reason
      t.date :year
      t.references :client, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
