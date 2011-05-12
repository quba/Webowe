class ApplicationController < ActionController::Base
  protect_from_forgery
   layout "application"
  
   def current_ability
     if defined?(current_pracownik.type)
         @current_ability ||= Ability.new(current_pracownik)
     else
          @current_ability ||= Ability.new(current_klient)
     end
    end

   rescue_from CanCan::AccessDenied do |exception|
      if request.env["HTTP_REFERER"].nil?
        session[:return_to] = root_url
      else
        session[:return_to] = :back
      end
       # jak gdzies cos klikniemy do czego nie mamy praw, to nas przekieruje z powrotem,
       # jeśli wpiszemy bezpośrednio w pasku przeglądarki - lecimy na stronę główną
      redirect_to session[:return_to], :alert => exception.message
    end
   
end