class CreateSurgeries < ActiveRecord::Migration
  def change
    create_table :surgeries do |t|
      t.string :surgical_procedure
      t.date :year
      t.references :client, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
