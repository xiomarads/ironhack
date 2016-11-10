class ContactsController < ApplicationController
  def index
      @contacts = Contact
      # Contact comes from the name of the model
      render :index
  end

  def new
    @newcontact = Contact.new
    render :new
  end
end
