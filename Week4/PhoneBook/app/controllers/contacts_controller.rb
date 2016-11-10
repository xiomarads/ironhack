class ContactsController < ApplicationController
  def index
      @contacts = Contact.order(name: "asc")

      render :index
  end

  def new
    @the_contact = Contact.new
    render :new
  end

  def create
    @the_contact = Contact.new(
      name: params[:contact][:name],
      phone: params[:contact][:phone],
      email: params[:contact][:email],
      address: params[:contact][:address])

      @the_contact.save

    redirect_to("/contacts")

  end

  def show
    @contact = Contact.find params[:id]
  end

end
