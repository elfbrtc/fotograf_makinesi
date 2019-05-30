class OyunsController < ApplicationController
  before_action :set_oyun, only: [:show, :edit, :update, :destroy]
before_action :authenticate_user!, only: [:new, :edit, :destroy]
  # GET /oyuns
  # GET /oyuns.json
  def index
    @oyuns = Oyun.all
  end

  # GET /oyuns/1
  # GET /oyuns/1.json
  def show
  end

  # GET /oyuns/new
  def new
    @oyun = Oyun.new
  end

  # GET /oyuns/1/edit
  def edit
  end

  # POST /oyuns
  # POST /oyuns.json
  def create
    @oyun = Oyun.new(oyun_params)

    respond_to do |format|
      if @oyun.save
        format.html { redirect_to @oyun, notice: 'Oyun was successfully created.' }
        format.json { render :show, status: :created, location: @oyun }
      else
        format.html { render :new }
        format.json { render json: @oyun.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /oyuns/1
  # PATCH/PUT /oyuns/1.json
  def update
    respond_to do |format|
      if @oyun.update(oyun_params)
        format.html { redirect_to @oyun, notice: 'Oyun was successfully updated.' }
        format.json { render :show, status: :ok, location: @oyun }
      else
        format.html { render :edit }
        format.json { render json: @oyun.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /oyuns/1
  # DELETE /oyuns/1.json
  def destroy
    @oyun.destroy
    respond_to do |format|
      format.html { redirect_to oyuns_url, notice: 'Oyun was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_oyun
      @oyun = Oyun.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def oyun_params
      params.require(:oyun).permit(:isim, :aciklama, :resim)
    end
end
