class AddCascadeToMedication < ActiveRecord::Migration
  def change
    remove_foreign_key :medications, :clients
    add_foreign_key :medications, :clients, on_delete: :cascade
  end
end
  