class ChangeClientsAlcoholAlcoholProblemSmokerDefault < ActiveRecord::Migration
  def change
    change_column_default :clients, :alcohol, from: false, to: nil
    change_column_default :clients, :alcohol_problem, from: false, to: nil
    change_column_default :clients, :smoker, from: false, to: nil
  end
end
