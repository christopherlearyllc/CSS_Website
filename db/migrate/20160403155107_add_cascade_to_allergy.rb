class AddCascadeToAllergy < ActiveRecord::Migration
  def change
    remove_foreign_key :allergies, :clients
    add_foreign_key :allergies, :clients, on_delete: :cascade
  end
end
