class PacientesController < ApplicationController
    def index
        @pacientes = Paciente.supervisionado_por(current_user).order('updated_at DESC')
    end

    def new
        @paciente = Paciente.new
    end

    def show
        @paciente = Paciente.find(params[:id])
        render 'show'
    end

    def create
        @paciente = Paciente.new(paciente_params)
        @paciente.medico_crm = current_user.crm
        @paciente.save
        redirect_to @paciente
    end
       
    def destroy
        @paciente = Paciente.find(params[:id])
        @paciente.destroy
        redirect_to @paciente
    end

    def edit
        @paciente = Paciente.find(params[:id])
    end

    def update
        @paciente = Paciente.find(params[:id])
        if @paciente.update_attributes(paciente_params)
            redirect_to @paciente
        else
            render 'edit'
        end
    end

    private
    def paciente_params
        params.require(:paciente).permit(:cpf_responsavel, :nome_responsavel, :nome, :estado, :enfermeiro_coren)
    end
end