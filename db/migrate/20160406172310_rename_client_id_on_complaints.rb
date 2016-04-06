class RenameClientIdOnComplaints < ActiveRecord::Migration
  def change
    rename_column :complaints, :client_id, :health_history_id
    add_foreign_key :complaints, :health_histories, on_delete: :cascade
  end
end
