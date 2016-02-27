class AddAlcoholConsumptionAlcoholAbuseSmokingHabit < ActiveRecord::Migration
  def change
    add_column :clients, :alcohol_consumption, :string
    add_column :clients, :alcohol_abuse, :string
    add_column :clients, :smoking_habit, :string
  end
end
