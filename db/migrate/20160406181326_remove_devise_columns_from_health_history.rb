class RemoveDeviseColumnsFromHealthHistory < ActiveRecord::Migration
  def change
    remove_column :health_histories, :email, :string
    remove_column :health_histories, :encrypted_password, :string
    remove_column :health_histories, :reset_password_token, :string
    remove_column :health_histories, :reset_password_sent_at, :datetime
    remove_column :health_histories, :remember_created_at, :datetime
    remove_column :health_histories, :sign_in_count, :integer
    remove_column :health_histories, :current_sign_in_at, :datetime
    remove_column :health_histories, :last_sign_in_at, :datetime
    remove_column :health_histories, :current_sign_in_ip, :inet
    remove_column :health_histories, :last_sign_in_ip, :inet
  end
end
