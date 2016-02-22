class CreateComplaints < ActiveRecord::Migration
  def change
    create_table :complaints do |t|
      t.string :symptom
      t.date :date_started
      t.text :alleviated_by
      t.text :aggravated_by
      t.text :diagnosis
      t.text :inhibited_activity
      t.text :treatment
      t.references :client, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
