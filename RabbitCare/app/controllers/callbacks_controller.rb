class CallbacksController < Devise::OmniauthCallbacksController    
    def facebook
      @enfermeiro = Enfermeiro.from_omniauth(request.env["omniauth.auth"])
      if @enfermeiro.persisted?
        sign_in_and_redirect @enfermeiro, event: :authentication
      else
        redirect_to new_user_registration_url
      end
    end
  
    def failure
      redirect_to root_path
    end
end