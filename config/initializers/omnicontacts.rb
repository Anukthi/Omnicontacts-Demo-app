require "omnicontacts"

OMNI_KEYS =  YAML.load_file("#{Rails.root}/config/omnicontact_keys.yml")[Rails.env]

Rails.application.middleware.use OmniContacts::Builder do
  importer :gmail, OMNI_KEYS["gmail"]["client_id"], OMNI_KEYS["gmail"]["client_secret"], {:redirect_path => "/contacts/gmail/contact_callback"}
  importer :yahoo, OMNI_KEYS["yahoo"]["client_id"], OMNI_KEYS["yahoo"]["client_secret"], {:callback_path => '/contacts/yahoo/contact_callback'} 
  importer :hotmail, "0000000040113366", "6tc8KUOyPC9tqpEmqkTK1Twv1-MMfc-V" , {:redirect_path => "/addressbook/outlook/contact_callback"}
end