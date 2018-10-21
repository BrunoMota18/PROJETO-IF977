class WelcomeController < ApplicationController
  def index    
    if enfermeiro_signed_in?
    else
      redirect_to new_enfermeiro_session_path
    end
  end
end
