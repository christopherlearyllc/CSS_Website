class AddUserRefToHealthHistories < ActiveRecord::Migration
  def change
    add_reference :health_histories, :user, index: true, foreign_key: true
  end
end
