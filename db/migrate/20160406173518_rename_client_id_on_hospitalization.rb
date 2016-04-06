class RenameClientIdOnHospitalization < ActiveRecord::Migration
  def change
    rename_column :hospitalizations, :client_id, :health_history_id
    add_foreign_key :hospitalizations, :health_histories, on_delete: :cascade
  end
end
