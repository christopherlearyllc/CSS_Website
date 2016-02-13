class ClientsController < ApplicationController
  
  def show
    @client = Client.find(params[:id])
  end

  def new
    @client = Client.new
  end

  def create
    @client = Client.new(client_params)

    @client.save
    redirect_to @client  
  end
      
  private
  
    def client_params
      params.require(:client).permit(:first_name, :last_name, :middle_initial, :gender, :date_of_birth, :height, :weight, :address, :home_phone)
    end
end
