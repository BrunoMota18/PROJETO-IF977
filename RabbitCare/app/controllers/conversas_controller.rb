class ConversasController < ApplicationController
    def index
      @conversas = Conversa.participando(current_user).order('updated_at DESC')
    end

    def new
      redirect_to conversa_path(@conversa) and return if @conversa
      @mensagem = current_user.mensagem.build
    end

    before_action :set_conversa, except: [:index]
    before_action :checa_participando!, except: [:index]

    def show
      @mensagem = Mensagem.new
    end

    private

    def set_conversa
      @conversa = Conversa.find_by(id: params[:id])
    end

    def checa_participando!
      redirect_to root_path unless @conversa && @conversa.participa?(current_user)
    end
end
  