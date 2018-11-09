class RabbitcaresController < ApplicationController
  before_action :set_rabbitcare, only: [:show, :edit, :update, :destroy]

  # GET /rabbitcares
  # GET /rabbitcares.json
  def index
    @rabbitcares = Rabbitcare.all
  end

  # GET /rabbitcares/1
  # GET /rabbitcares/1.json
  def show
  end

  # GET /rabbitcares/new
  def new
    @rabbitcare = Rabbitcare.new
  end

  # GET /rabbitcares/1/edit
  def edit
  end

  # POST /rabbitcares
  # POST /rabbitcares.json
  def create
    @rabbitcare = Rabbitcare.new(rabbitcare_params)

    respond_to do |format|
      if @rabbitcare.save
        format.html { redirect_to @rabbitcare, notice: 'Rabbitcare was successfully created.' }
        format.json { render :show, status: :created, location: @rabbitcare }
      else
        format.html { render :new }
        format.json { render json: @rabbitcare.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /rabbitcares/1
  # PATCH/PUT /rabbitcares/1.json
  def update
    respond_to do |format|
      if @rabbitcare.update(rabbitcare_params)
        format.html { redirect_to @rabbitcare, notice: 'Rabbitcare was successfully updated.' }
        format.json { render :show, status: :ok, location: @rabbitcare }
      else
        format.html { render :edit }
        format.json { render json: @rabbitcare.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /rabbitcares/1
  # DELETE /rabbitcares/1.json
  def destroy
    @rabbitcare.destroy
    respond_to do |format|
      format.html { redirect_to rabbitcares_url, notice: 'Rabbitcare was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_rabbitcare
      @rabbitcare = Rabbitcare.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def rabbitcare_params
      params.require(:rabbitcare).permit(:addmedicamento, :removemedicamento)
    end
end
