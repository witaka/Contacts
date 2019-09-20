class ContactsController < ApplicationController

  def index
    contacts = Contact.order created_at: :desc
    render json: contacts
  end

  def show
    @contact = Contact.find params[:id]
    render json: @contact
  end

  def import
  	Contact.import(params[:file])
  	redirect_to'http://localhost:3434', notice: "Activity Data imported!"
  end

  
  
end

