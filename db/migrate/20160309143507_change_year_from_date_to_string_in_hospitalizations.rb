class ChangeYearFromDateToStringInHospitalizations < ActiveRecord::Migration
  def change
    change_column :hospitalizations, :year, :string
  end
end
