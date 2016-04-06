class RenameClientIdOnMedication < ActiveRecord::Migration
  def change
    rename_column :medications, :client_id, :health_history_id
    add_foreign_key :medications, :health_histories, on_delete: :cascade
  end
end
