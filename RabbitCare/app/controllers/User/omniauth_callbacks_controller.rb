# frozen_string_literal: true

class User::OmniauthCallbacksController < Devise::OmniauthCallbacksController
  # You should configure your model like this:
  devise :omniauthable, omniauth_providers: [:facebook]

  # You should also create an action method in this controller like this:
  def facebook
    @user = User.find_for_oauth(request.env["omniauth.auth"], current_user)

      if @user.persisted?
        sign_in_and_redirect @user, event: :authentication
        set_flash_message(:notice, :success, kind: "facebook".capitalize) if is_navigational_format?
      else
        session["devise.facebook_data"] = request.env["omniauth.auth"]
        redirect_to new_user_registration_url
      end
  end
  
  def after_sign_in_path_for(resource)
    if resource.email_verified?
      super resource
    else
      finish_signup_path(resource)
    end
  end

  # More info at:
  # https://github.com/plataformatec/devise#omniauth

  GET|POST /resource/auth/facebook
  def passthru
    super
  end

  GET|POST /users/auth/facebook/callback
  def failure
    super
  end

  # protected

  The path used when OmniAuth fails
  def after_omniauth_failure_path_for(scope)
    super(scope)
  end
end
