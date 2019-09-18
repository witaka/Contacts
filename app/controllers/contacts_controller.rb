class ContactsController < ApplicationController

  def index
  	@contacts = Contact.all
  end

  def import
  	Contact.import(params[:file])
  	redirect_to root_url, notice: "Activity Data imported!"
  end
  
end
