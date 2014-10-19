class KayciesController < ApplicationController
  before_action :set_kaycy, only: [:show, :edit, :update, :destroy]

  # GET /kaycies
  # GET /kaycies.json
  def index
    @kaycies = Kaycie.all
  end

  # GET /kaycies/1
  # GET /kaycies/1.json
  def show
  end

  # GET /kaycies/new
  def new
    @kaycy = Kaycie.new
  end

  # GET /kaycies/1/edit
  def edit
  end

  # POST /kaycies
  # POST /kaycies.json
  def create
    @kaycy = Kaycie.new(kaycy_params)

    respond_to do |format|
      if @kaycy.save
        format.html { redirect_to @kaycy, notice: 'Kaycie was successfully created.' }
        format.json { render :show, status: :created, location: @kaycy }
      else
        format.html { render :new }
        format.json { render json: @kaycy.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /kaycies/1
  # PATCH/PUT /kaycies/1.json
  def update
    respond_to do |format|
      if @kaycy.update(kaycy_params)
        format.html { redirect_to @kaycy, notice: 'Kaycie was successfully updated.' }
        format.json { render :show, status: :ok, location: @kaycy }
      else
        format.html { render :edit }
        format.json { render json: @kaycy.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /kaycies/1
  # DELETE /kaycies/1.json
  def destroy
    @kaycy.destroy
    respond_to do |format|
      format.html { redirect_to kaycies_url, notice: 'Kaycie was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_kaycy
      @kaycy = Kaycie.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def kaycy_params
      params.require(:kaycy).permit(:name, :content)
    end
end
