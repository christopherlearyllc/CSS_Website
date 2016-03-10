class ChangeTypeToAllergenInAllergies < ActiveRecord::Migration
  def change
    rename_column :allergies, :type, :allergen
  end
end
