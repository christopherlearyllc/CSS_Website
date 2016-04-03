class AddCascadeToHospitalization < ActiveRecord::Migration
  def change
    remove_foreign_key :hospitalizations, :clients
    add_foreign_key :hospitalizations, :clients, on_delete: :cascade
  end
end
