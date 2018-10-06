class EnfermeirosController < ApplicationController
    def new
    end

    def create
        render plain: params[:enfermeiro].inspect
    end
end
