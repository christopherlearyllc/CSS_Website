class RemoveAlcoholAlcoholProblemSmokerFromClients < ActiveRecord::Migration
  def change
    remove_column :clients, :alcohol, :string
    remove_column :clients, :alcohol_problem, :string
    remove_column :clients, :smoker, :string
  end
end
