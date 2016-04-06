class PersonalDiseaseHistory < ActiveRecord::Base
  belongs_to :health_history
  validates :heart_disease, :cancer, :diabetes, :hypertension, :thyroid_disorder, :hepatitis, :asthma_allergies, :seizures, :stroke, :neurological_disorders, :substance_abuse, :other, presence: true
end
