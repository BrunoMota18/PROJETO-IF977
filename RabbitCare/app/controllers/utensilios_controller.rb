class UtensiliosController < ApplicationController
  before_action :set_utensilio, only: [:show, :edit, :update, :destroy]

  # GET /utensilios
  # GET /utensilios.json
  def index
    @utensilios = Utensilio.where cpf: Paciente.find(params[:paciente_id]).cpf
  end

  # GET /utensilios/1
  # GET /utensilios/1.json
  def show
  end

  # GET /utensilios/new
  def new
    @utensilio = Utensilio.new
  end

  # GET /utensilios/1/edit
  def edit
  end

  # POST /utensilios
  # POST /utensilios.json
  def create
    @utensilio = Utensilio.new(utensilio_params)
    @utensilio.cpf = Paciente.find(params[:paciente_id]).cpf

    respond_to do |format|
      if @utensilio.save
        format.html { redirect_to utensilio_path(@utensilio, paciente_id: params[:paciente_id]), notice: 'Utensilio was successfully created.' }
        format.json { render :show, status: :created, location: @utensilio }
      else
        format.html { render :new }
        format.json { render json: @utensilio.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /utensilios/1
  # PATCH/PUT /utensilios/1.json
  def update
    respond_to do |format|
      if @utensilio.update(utensilio_params)
        format.html {  redirect_to utensilio_path(@utensilio, paciente_id: params[:paciente_id]), notice: 'Utensilio was successfully updated.' }
        format.json { render :show, status: :ok, location: @utensilio }
      else
        format.html { render :edit }
        format.json { render json: @utensilio.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /utensilios/1
  # DELETE /utensilios/1.json
  def destroy
    @utensilio.destroy
    respond_to do |format|
      format.html { redirect_to medicamentos_url(paciente_id: params[:paciente_id]), notice: 'Utensilio was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_utensilio
      @utensilio = Utensilio.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def utensilio_params
      params.require(:utensilio).permit(:nome, :descricao, :cpf)
    end
end
