class MedicosController < ApplicationController
    def new
    end
    
    def create
        #render plain: params[:medico].inspect
        @medico = medico.new(medico_params)
        @medico.save
        redirect_to @medico
    end
                    
    def show
        @medico = medico.find(params[:id])
    end
    
    private 
    def medico_params
        params.require(:medico).permit(:nome, :cpf, :coren)
    end
    
end
