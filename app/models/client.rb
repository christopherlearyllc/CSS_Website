class Client < ActiveRecord::Base
  has_many :complaints, :dependent => :destroy
  has_one :personal_disease_history, :dependent => :destroy
  has_one :family_disease_history, :dependent => :destroy
  has_many :surgeries, :dependent => :destroy
  has_many :hospitalizations, :dependent => :destroy
  has_many :medications, :dependent => :destroy
  has_many :allergies, :dependent => :destroy
  
  # validates :first_name, :last_name, :height, :weight, :address, :home_phone, :alcohol_consumption, :smoking_habit, presence: true
  validates :middle_initial, length: { maximum: 1 }

  accepts_nested_attributes_for :complaints, reject_if: :all_blank, allow_destroy: true
  accepts_nested_attributes_for :surgeries, reject_if: :all_blank, allow_destroy: true
  accepts_nested_attributes_for :medications, reject_if: :all_blank, allow_destroy: true
  accepts_nested_attributes_for :allergies, reject_if: :all_blank, allow_destroy: true
  accepts_nested_attributes_for :hospitalizations, reject_if: :all_blank, allow_destroy: true
end
