class VitosController < ApplicationController
  before_action :set_vito, only: [:show, :edit, :update, :destroy]

  # GET /vitos
  # GET /vitos.json
  def index
    @vitos = Vito.all
  end

  # GET /vitos/1
  # GET /vitos/1.json
  def show
  end

  # GET /vitos/new
  def new
    @vito = Vito.new
  end

  # GET /vitos/1/edit
  def edit
  end

  # POST /vitos
  # POST /vitos.json
  def create
    @vito = Vito.new(vito_params)

    respond_to do |format|
      if @vito.save
        format.html { redirect_to @vito, notice: 'Vito was successfully created.' }
        format.json { render :show, status: :created, location: @vito }
      else
        format.html { render :new }
        format.json { render json: @vito.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /vitos/1
  # PATCH/PUT /vitos/1.json
  def update
    respond_to do |format|
      if @vito.update(vito_params)
        format.html { redirect_to @vito, notice: 'Vito was successfully updated.' }
        format.json { render :show, status: :ok, location: @vito }
      else
        format.html { render :edit }
        format.json { render json: @vito.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /vitos/1
  # DELETE /vitos/1.json
  def destroy
    @vito.destroy
    respond_to do |format|
      format.html { redirect_to vitos_url, notice: 'Vito was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_vito
      @vito = Vito.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def vito_params
      params.require(:vito).permit(:time, :updates)
    end
end
