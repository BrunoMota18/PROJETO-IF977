class UsersController < ApplicationController
    def show
        @user = User.find(params[:id])
        render view_por_usuario(@user)
    end

    private
    def view_por_usuario(user)
        case user.tipo
            when 'enfermeiro' then 'enfermeiros_show'
            when 'medico' then 'medicos_show'
            else 'enfermeiros_show'
        end
    end
end
