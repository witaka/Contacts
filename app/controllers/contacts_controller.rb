class ContactsController < ApplicationController

  def welcome
  end 

  def index
    contacts = Contact.order created_at: :desc
    render json: contacts
  end

  def show
    @contact = Contact.find params[:id]
    render json: @contact
  end

  def import

    if params[:file] 
        Contact.import(params[:file]) 
        redirect_to'http://localhost:3434', notice: "Activity Data imported!"
  	else
  		redirect_to root_url, notice: "Please upload a CSV file"
  	end
  end

  
  
end

