class ContactsController < ApplicationController

  def index
  end

  def display_imported_contacts
    @contacts = request.env['omnicontacts.contacts']
    @user = request.env['omnicontacts.user']
    @called_from = "display_imported_contacts"
    @provider = params["importer"]
    @provider_section = params["importer"] +"_address_book_data"
    @error_message = @contacts.empty? ? "<font color='red'>Error: Import of your contacts failed. This maybe due to an empty file or a full name / email-id was not provided. Please make sure that at least full name or email id is present.</font>" : ''
    render :partial=>"imported_contents", :layout => false
  end

  def display_imported_contact_failure
    @contacts = []
    @called_from = "display_imported_contact_failure"
    @provider = params["importer"]
    @provider_section = params["importer"] +"_address_book_data"
    @error_message = "<font color ='red'>#{params[:error_message].gsub("_", " ").titleize}</font>"
    render :partial=>"imported_contents", :layout => false
  end

end
