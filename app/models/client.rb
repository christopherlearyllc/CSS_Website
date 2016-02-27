class Client < ActiveRecord::Base
  has_many :complaints
  has_one :personal_disease_history
  has_one :family_disease_history
  has_many :surgeries
  has_many :hospitalizations
  has_many :medications
  has_many :allergies
  
  validates :first_name, :last_name, :height, :weight, :address, :home_phone, presence: true
  validates :middle_initial, length: { maximum: 1 }

  accepts_nested_attributes_for :complaints
end
