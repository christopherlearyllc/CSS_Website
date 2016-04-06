class RenameClientIdOnAllergy < ActiveRecord::Migration
  def change
    rename_column :allergies, :client_id, :health_history_id
    add_foreign_key :allergies, :health_histories, on_delete: :cascade
  end
end
