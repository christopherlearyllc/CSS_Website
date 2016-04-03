class AddCascadeToSurgery < ActiveRecord::Migration
  def change
    remove_foreign_key :surgeries, :clients
    add_foreign_key :surgeries, :clients, on_delete: :cascade
  end
end
