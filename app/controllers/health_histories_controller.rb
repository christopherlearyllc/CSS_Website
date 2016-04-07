class HealthHistoriesController < ApplicationController
  before_action :authenticate_user!

  def index
    @health_histories = HealthHistory.all
  end

  def show
    @health_history = HealthHistory.find(params[:id])
    unless current_user.id == @health_history.user_id || current_user.admin
      flash[:alert] = "Sorry, you do not have access to that page."
      redirect_to root_path
      return
    end
    @height_feet = @health_history.height_feet(@health_history.height)
    @height_inches = @health_history.height_inches(@health_history.height)
  end

  def new
    @health_history = HealthHistory.new
    @health_history.complaints.build
    @health_history.surgeries.build
    @health_history.medications.build
    @health_history.hospitalizations.build
    @health_history.allergies.build
    @health_history.build_personal_disease_history
    @health_history.build_family_disease_history
  end

  def edit
    @health_history = HealthHistory.find(params[:id])
    unless current_user.id == @health_history.user_id || current_user.admin
      flash[:alert] = "Sorry, you do not have access to that page."
      redirect_to root_path
      return
    end
  end

  def create
    @health_history = HealthHistory.new(health_history_params)

    if @health_history.save

      redirect_to @health_history, notice: "Health history form saved!"
    else
      @health_history.complaints.build
      @health_history.surgeries.build
      @health_history.medications.build
      @health_history.hospitalizations.build
      @health_history.allergies.build
      @health_history.build_personal_disease_history
      @health_history.build_family_disease_history
      render 'new'
    end
  end

  def update
    @health_history = HealthHistory.find(params[:id])

    if @health_history.update(health_history_params)
      redirect_to @health_history
    else
      render 'edit'
    end
  end

  def destroy
    @health_history = HealthHistory.find(params[:id])
    @health_history.destroy

    redirect_to health_histories_path, alert: "Health History deleted!"
  end

  private

    def health_history_params
      params.require(:health_history).permit(:first_name, :last_name, :middle_initial, :gender, :date_of_birth, :height, :weight, :address, :home_phone, :work_phone, :physician, :referred_by, :emergency_contact_name, :emergency_contact_phone, :exercise_frequency, :exercise_type, :breakfast, :lunch, :dinner, :snack, :caffeine_cups, :alcohol_consumption, :alcohol_type, :alcohol_abuse, :drinks_per_week, :smoking_habit, :smoking_substance, :years_smoker, :year_quit, :city, :state, :zip, :drink_coffee, :drink_tea, :drink_cola, :drink_other_caffeine, complaints_attributes: [ :id, :symptom, :date_started, :alleviated_by, :aggravated_by, :diagnosis, :inhibited_activity, :treatment, :_destroy ], surgeries_attributes: [ :id, :surgical_procedure, :year, :_destroy ], hospitalizations_attributes: [ :id, :hospitalization_reason, :year, :_destroy ], medications_attributes: [ :id, :name, :strength, :frequency, :_destroy ], allergies_attributes: [ :id, :allergen, :reaction, :_destroy ], personal_disease_history_attributes: [ :id, :heart_disease, :cancer, :diabetes, :hypertension, :thyroid_disorder, :hepatitis, :asthma_allergies, :seizures, :stroke, :neurological_disorders, :substance_abuse, :other, :_destroy], family_disease_history_attributes: [ :id, :heart_disease, :cancer, :diabetes, :hypertension, :thyroid_disorder, :hepatitis, :asthma_allergies, :seizures, :stroke, :neurological_disorders, :substance_abuse, :other, :_destroy])
    end
end
