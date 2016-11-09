class ContactsController < ApplicationController
  def index
    @contacts = Contact.order(created_at: :desc).limit(10)
      render :index
  end
  def add
    @newcontact = Contact.new
    render 'new'
  end
end
