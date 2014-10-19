class BiscuitsController < ApplicationController
  before_action :set_biscuit, only: [:show, :edit, :update, :destroy]

  # GET /biscuits
  # GET /biscuits.json
  def index
    @biscuits = Biscuit.all
  end

  # GET /biscuits/1
  # GET /biscuits/1.json
  def show
  end

  # GET /biscuits/new
  def new
    @biscuit = Biscuit.new
  end

  # GET /biscuits/1/edit
  def edit
  end

  # POST /biscuits
  # POST /biscuits.json
  def create
    @biscuit = Biscuit.new(biscuit_params)

    respond_to do |format|
      if @biscuit.save
        format.html { redirect_to @biscuit, notice: 'Biscuit was successfully created.' }
        format.json { render :show, status: :created, location: @biscuit }
      else
        format.html { render :new }
        format.json { render json: @biscuit.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /biscuits/1
  # PATCH/PUT /biscuits/1.json
  def update
    respond_to do |format|
      if @biscuit.update(biscuit_params)
        format.html { redirect_to @biscuit, notice: 'Biscuit was successfully updated.' }
        format.json { render :show, status: :ok, location: @biscuit }
      else
        format.html { render :edit }
        format.json { render json: @biscuit.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /biscuits/1
  # DELETE /biscuits/1.json
  def destroy
    @biscuit.destroy
    respond_to do |format|
      format.html { redirect_to biscuits_url, notice: 'Biscuit was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_biscuit
      @biscuit = Biscuit.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def biscuit_params
      params.require(:biscuit).permit(:name, :content)
    end
end
