class ClientsController < ApplicationController
  
  def index
    @clients = Client.all
  end

  def show
    @client = Client.find(params[:id])
  end

  def new
    @client = Client.new
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
      params.require(:client).permit(:first_name, :last_name, :middle_initial, :gender, :date_of_birth, :height, :weight, :address, :home_phone, :work_phone, :physician, :referred_by, :emergency_contact_name, :emergency_contact_phone, :exercise_frequency, :exercise_type, :breakfast, :lunch, :dinner, :snack, :caffeine_cups, :alcohol_consumption, :alcohol_type, :alcohol_abuse, :drinks_per_week, :smoking_habit, :smoking_substance, :years_smoker, :year_quit, :city, :state, :zip, :drink_coffee, :drink_tea, :drink_cola, :drink_other_caffeine)
    end
end
