class ClientsController < ApplicationController
  
  def index
    @clients = Client.all
  end

  def show
    @client = Client.find(params[:id])
  end

  def new
    @client = Client.new
    @client.complaints.build
    @client.surgeries.build
    @client.medications.build
    @client.hospitalizations.build
    @client.allergies.build
  end

  def edit
    @client = Client.find(params[:id])
  end

  def create
    @client = Client.new(client_params)

    if @client.save

      redirect_to @client
    else
      render 'new'
    end  
  end

  def update
    @client = Client.find(params[:id])

    if @client.update(client_params)
      redirect_to @client
    else
      render 'edit'
    end
  end
      
  private
  
    def client_params
      params.require(:client).permit(:first_name, :last_name, :middle_initial, :gender, :date_of_birth, :height, :weight, :address, :home_phone, :work_phone, :physician, :referred_by, :emergency_contact_name, :emergency_contact_phone, :exercise_frequency, :exercise_type, :breakfast, :lunch, :dinner, :snack, :caffeine_cups, :alcohol_consumption, :alcohol_type, :alcohol_abuse, :drinks_per_week, :smoking_habit, :smoking_substance, :years_smoker, :year_quit, :city, :state, :zip, :drink_coffee, :drink_tea, :drink_cola, :drink_other_caffeine, complaints_attributes: [ :id, :symptom, :date_started, :alleviated_by, :aggravated_by, :diagnosis, :inhibited_activity, :treatment, :_destroy ], surgeries_attributes: [ :id, :surgical_procedure, :year, :_destroy ], hospitalizations_attributes: [ :id, :hospitalization_reason, :year, :_destroy ], medications_attributes: [ :id, :name, :strength, :frequency, :_destroy ], allergies_attributes: [ :id, :allergen, :reaction, :_destroy ])
    end
end
