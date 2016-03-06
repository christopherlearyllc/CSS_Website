class ChangeYearQuitFromDateToStringInClients < ActiveRecord::Migration
  def change
    change_column :clients, :year_quit, :string
  end
end
