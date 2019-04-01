class DescricaosController < ApplicationController
  before_action :set_descricao, only: [:show, :edit, :update, :destroy]

  # GET /descricaos
  # GET /descricaos.json
  def index
    @descricaos = Descricao.all
  end

  # GET /descricaos/1
  # GET /descricaos/1.json
  def show
  end

  # GET /descricaos/new
  def new
    @descricao = Descricao.new
  end

  # GET /descricaos/1/edit
  def edit
  end

  # POST /descricaos
  # POST /descricaos.json
  def create
    @descricao = Descricao.new(descricao_params)

    respond_to do |format|
      if @descricao.save
        format.html { redirect_to @descricao, notice: 'Descricao was successfully created.' }
        format.json { render :show, status: :created, location: @descricao }
      else
        format.html { render :new }
        format.json { render json: @descricao.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /descricaos/1
  # PATCH/PUT /descricaos/1.json
  def update
    respond_to do |format|
      if @descricao.update(descricao_params)
        format.html { redirect_to @descricao, notice: 'Descricao was successfully updated.' }
        format.json { render :show, status: :ok, location: @descricao }
      else
        format.html { render :edit }
        format.json { render json: @descricao.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /descricaos/1
  # DELETE /descricaos/1.json
  def destroy
    @descricao.destroy
    respond_to do |format|
      format.html { redirect_to descricaos_url, notice: 'Descricao was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_descricao
      @descricao = Descricao.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def descricao_params
      params.require(:descricao).permit(:departamento, :user_id)
    end
end
