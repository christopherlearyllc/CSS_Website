class ChangeYearFromDateToStringInSurgeries < ActiveRecord::Migration
  def change
    change_column :surgeries, :year, :string
  end
end
