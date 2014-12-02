OmnicontactsExample::Application.routes.draw do

  get "/contacts/:importer/contact_callback" => "contacts#display_imported_contacts"
  get "/contacts/failure" => "contacts#display_imported_contact_failure"
  root :to => "contacts#index"

end
