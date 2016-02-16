class Client < ActiveRecord::Base
  validates :first_name, :last_name, :height, :weight, :address, :home_phone, presence: true
end
