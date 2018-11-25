class UsersController < ApplicationController
    def index
        @users = User.all
    end

    def show
        @user = User.find(params[:id])
        if @user.sign_in_count.eql? 1
            flash.now["success"] = "Parabéns! Você agora faz parte do RabbitCare!"
        end
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
