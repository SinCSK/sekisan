class ClientsController < ApplicationController

  def index 
  end

  def new
    @clients = Client.order("created_at DESC")
    @client = Client.new
  end
  
  def create
    @client = Client.new(client_params)
    if @client.save
      redirect_to new_client_path
    else
      render :new
    end
  end

  def destroy
    cilient = Client.find(params[:id])
    cilient.destroy
    redirect_to new_client_path
  end

  private

  def client_params
    params.require(:client).permit(:company, :name, :tel, :email).merge(user_id: current_user.id)
  end

end
