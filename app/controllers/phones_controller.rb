class PhonesController < ApplicationController
  before_action :find_phone, only: [:show, :update, :destroy]

  def create
    @contact = Contact.find(params[:contact_id])
    @phone = Phone.new(phone_params)
    @phone.contact = @contact

    if @phone.save
      render json: {id: @phone.id}
    else
      render json: { errors: @phone.errors.full_messages }      
    end
  end

  def update
    if @phone.update(phone_params)
      render json: @phone
    else
      render json: { errors: @phone.errors }
    end
  end
   
  def show 
    render json: @phone
  end

  def index
    phones = Phone.order created_at: :desc
    render json: phones
  end
  
  def destroy
    @phone.destroy
    render json: {status: 200}
  end

  private
  def phone_params
    params.permit(:id, :number, :type)
  end

  def find_phone
    @phone = Phone.find(params[:id])
  end

end