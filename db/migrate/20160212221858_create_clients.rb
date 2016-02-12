class CreateClients < ActiveRecord::Migration
  def change
    create_table :clients do |t|
      t.string :first_name
      t.string :last_name
      t.string :middle_initial
      t.string :gender
      t.date :date_of_birth
      t.integer :height
      t.integer :weight
      t.string :address
      t.string :home_phone

      t.timestamps null: false
    end
  end
end
