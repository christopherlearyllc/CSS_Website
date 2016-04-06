class RenameClientsToHealthHistories < ActiveRecord::Migration
  def change
    rename_table :clients, :health_histories
  end
end
