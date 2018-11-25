class MensagemsController < ApplicationController
    before_action :ache_conversa!
  
    def new
        @mensagem = current_user.mensagems.build
    end

    def create
      @conversa ||= Conversa.create(autor_id: current_user.id, destinatario_id: @destinatario.id)
      @mensagem = current_user.mensagems.build(mensagem_params)
      @mensagem.conversa_id = @conversa.id
      @mensagem.save!
  
      flash[:success] = "Sua mensagem foi enviada!"
      redirect_to conversa_path(@conversa)
    end
  
    private
  
    def mensagem_params
      params.require(:mensagem).permit(:conteudo)
    end
  
    def ache_conversa!
      if params[:destinatario_id]
        @destinatario = User.find_by(id: params[:destinatario_id])
        redirect_to(root_path) and return unless @destinatario
        @conversa = Conversa.between(current_user.id, @destinatario.id)[0]
      else
        @conversa = Conversa.find_by(id: params[:conversa_id])
        redirect_to(root_path) and return unless @conversa && @conversa.participa?(current_user)
      end
    end
end
  