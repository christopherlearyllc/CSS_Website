class ChangeClientsAlcoholAlcoholProblemSmokerToString < ActiveRecord::Migration
  def change
    change_column :clients, :alcohol, :string, null: true
    change_column :clients, :alcohol_problem, :string, null: true
    change_column :clients, :smoker, :string, null: true
  end
end
