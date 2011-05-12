# coding: utf-8
# tak wiem, to jakas czarna magia zeby powyzszy pozwalal na uzywanie polskich znakow w kodzie, ale ok.. :)
# wieksza czarna magia bylo zmuszenie devisa do respektowania zezwolen oraz zrobienie rejestracji pracownikow, ktora.. dziala ;)
class Admins::RegistrationsController < Devise::RegistrationsController
  before_filter :check_permissions, :only => [:new, :create, :cancel]
  skip_before_filter :require_no_authentication

  def check_permissions
    authorize! :create, resource
  end

  def create
    @admin = Admin.new(params[:admin])
    if @admin.save
      flash[:notice] = "Administrator został dodany pomyślnie."
      redirect_to pracowniks_url
    else
      render :action => :new
    end
  end
end
