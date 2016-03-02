class RemoveCaffeineTypeFromClients < ActiveRecord::Migration
  def change
    remove_column :clients, :caffeine_type, :string
  end
end
