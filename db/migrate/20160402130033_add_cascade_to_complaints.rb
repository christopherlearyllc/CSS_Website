class AddCascadeToComplaints < ActiveRecord::Migration
  def change
    remove_foreign_key :complaints, :clients
    add_foreign_key :complaints, :clients, on_delete: :cascade
  end
end
