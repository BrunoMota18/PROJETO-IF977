class PacientesController < ApplicationController
    def index
        @pacientes = Paciente.supervisionado_por(current_user).order('updated_at DESC')
    end

    def new
    end

    def show
        @paciente = Paciente.find(params[:id])
        render 'show'
    end
end