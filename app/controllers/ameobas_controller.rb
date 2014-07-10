class AmeobasController < ApplicationController
  before_action :set_ameoba, only: [:show, :edit, :update, :destroy, :split]

  def split
    @ameoba.split
    redirect_to ameobas_path
  end
  # GET /ameobas
  # GET /ameobas.json


  def index
    @ameobas = Ameoba.all
  end

  # GET /ameobas/1
  # GET /ameobas/1.json
  def show
  end

  # GET /ameobas/new
  def new
    @ameoba = Ameoba.new
    @talents = Talent.all
    @acts = Act.all
  end

  # GET /ameobas/1/edit
  def edit
    @talents = Talent.all
    @acts = Act.all
  end

  # POST /ameobas
  # POST /ameobas.json
  def create
    @ameoba = Ameoba.new(ameoba_params)

    respond_to do |format|
      if @ameoba.save
        format.html { redirect_to @ameoba, notice: 'Ameoba was successfully created.' }
        format.json { render :show, status: :created, location: @ameoba }
      else
        format.html { render :new }
        format.json { render json: @ameoba.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ameobas/1
  # PATCH/PUT /ameobas/1.json
  def update
    respond_to do |format|
      if @ameoba.update(ameoba_params)
        format.html { redirect_to @ameoba, notice: 'Ameoba was successfully updated.' }
        format.json { render :show, status: :ok, location: @ameoba }
      else
        format.html { render :edit }
        format.json { render json: @ameoba.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ameobas/1
  # DELETE /ameobas/1.json
  def destroy
    @ameoba.destroy
    respond_to do |format|
      format.html { redirect_to ameobas_url, notice: 'Ameoba was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ameoba
      @ameoba = Ameoba.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ameoba_params
      params.require(:ameoba).permit(:name, :generating_number, :talent_id, :act_id)
    end
end
