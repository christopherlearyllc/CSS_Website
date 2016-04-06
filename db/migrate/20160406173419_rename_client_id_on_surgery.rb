class RenameClientIdOnSurgery < ActiveRecord::Migration
  def change
    rename_column :surgeries, :client_id, :health_history_id
    add_foreign_key :surgeries, :health_histories, on_delete: :cascade
  end
end
