class EnfermeirosController < ApplicationController
    def new
    end

    def create
        #render plain: params[:enfermeiro].inspect
        @enfermeiro = Enfermeiro.new(enfermeiro_params)
        @enfermeiro.save
        redirect_to @enfermeiro
    end
                
    def show
        @enfermeiro = Enfermeiro.find(params[:id])
    end

    private 
    def enfermeiro_params
        params.require(:enfermeiro).permit(:nome, :cpf, :coren)
    end

end
