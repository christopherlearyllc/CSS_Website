class AddColumnsToClient < ActiveRecord::Migration
  def change
    add_column :clients, :work_phone, :string
    add_column :clients, :physician, :string
    add_column :clients, :referred_by, :string
    add_column :clients, :emergency_contact_name, :string
    add_column :clients, :emergency_contact_phone, :string
    add_column :clients, :exercise_frequency, :string
    add_column :clients, :exercise_type, :string
    add_column :clients, :breakfast, :text
    add_column :clients, :lunch, :text
    add_column :clients, :dinner, :text
    add_column :clients, :snack, :text
    add_column :clients, :caffeine_type, :string
    add_column :clients, :caffeine_cups, :integer
    add_column :clients, :alcohol, :boolean, null: false, default: false
    add_column :clients, :alcohol_type, :string
    add_column :clients, :drinks_per_week, :integer
    add_column :clients, :alcohol_problem, :boolean, null: false, default: false
    add_column :clients, :smoker, :boolean, null: false, default: false
    add_column :clients, :smoking_substance, :string
    add_column :clients, :years_smoker, :integer
    add_column :clients, :year_quit, :date
  end
end
