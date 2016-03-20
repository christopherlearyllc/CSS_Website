class PersonalDiseaseHistory < ActiveRecord::Base
  belongs_to :client
  validates :heart_disease, :cancer, :diabetes, :hypertension, :thyroid_disorder, :hepatitis, :asthma_allergies, :seizures, :stroke, :neurological_disorders, :substance_abuse, presence: true
end
