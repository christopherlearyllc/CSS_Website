class RenameClientIdOnPersonalDiseaseHistory < ActiveRecord::Migration
  def change
    rename_column :personal_disease_histories, :client_id, :health_history_id
    add_foreign_key :personal_disease_histories, :health_histories, on_delete: :cascade
  end
end
