class Medication < ActiveRecord::Base
  belongs_to :health_history
end
