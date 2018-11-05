class EnfermeirosController < ApplicationController
    before_action :configure_permitted_parameters, if: :devise_controller?

    def new
        render 'enfermeiros/registrations/new.html.erb'
    end

    def index
    end

    def create
        #render plain: params[:enfermeiro].inspect
        @enfermeiro = Enfermeiro.new(enfermeiro_params)
        @enfermeiro.save
        puts @enfermeiro.errors.full_messages
        redirect_to @enfermeiro
    end
                
    def show
        @enfermeiro = Enfermeiro.find(params[:id])
    end

    private 
    def enfermeiro_params
        params.require(:enfermeiro).permit(:nome, :email, :password, :cpf, :coren)
    end


    protected
    def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up, keys: [:nome, :cpf, :coren])
    end

    
end
