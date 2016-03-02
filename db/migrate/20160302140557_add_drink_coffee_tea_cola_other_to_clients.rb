class AddDrinkCoffeeTeaColaOtherToClients < ActiveRecord::Migration
  def change
    add_column :clients, :drink_coffee, :string
    add_column :clients, :drink_tea, :string
    add_column :clients, :drink_cola, :string
    add_column :clients, :drink_other_caffeine, :string
  end
end
