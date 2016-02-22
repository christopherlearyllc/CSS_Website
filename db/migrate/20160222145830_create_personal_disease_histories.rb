class CreatePersonalDiseaseHistories < ActiveRecord::Migration
  def change
    create_table :personal_disease_histories do |t|
      t.text :heart_disease
      t.text :cancer
      t.text :diabetes
      t.text :hypertension
      t.text :thyroid_disorder
      t.text :hepatitis
      t.text :asthma_allergies
      t.text :seizures
      t.text :stroke
      t.text :neurological_disorders
      t.text :substance_abuse
      t.text :other
      t.references :client, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
