class MedicosController < ApplicationController
    def new
        render "medicos/registrations/new.html.erb"
    end
    
    def create
        #render plain: params[:medico].inspect
        @medico = Medico.new(medico_params)
        @medico.save
        redirect_to @medico
    end
                    
    def show
        @medico = Medico.find(params[:id])
    end
    
    private 
    def medico_params
        params.require(:medico).permit(:nome, :cpf, :crm)
    end

    protected
    def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up, keys: [:nome, :cpf, :crm])
    end

    
end
