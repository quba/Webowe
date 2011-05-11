class Pracowniks::RegistrationsController  < Devise::RegistrationsController
  before_filter :authenticate_admin!, :only => [:new, :create, :cancel]
  skip_before_filter :require_no_authentication
 
end
