class ContactsController < ApplicationController
  def index
      @contacts = Contact
      render :index
  end

  def new
    @the_contact = Contact.new
    render :new
  end

end
