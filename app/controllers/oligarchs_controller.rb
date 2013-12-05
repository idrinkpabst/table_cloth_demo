class OligarchsController < ApplicationController
  before_action :set_oligarch, only: [:show, :edit, :update, :destroy]

  # GET /oligarchs
  # GET /oligarchs.json
  def index
    @oligarchs = Oligarch.all
  end

  def old_index
    @oligarchs = Oligarch.all
  end

  # GET /oligarchs/1
  # GET /oligarchs/1.json
  def show
  end

  # GET /oligarchs/new
  def new
    @oligarch = Oligarch.new
  end

  # GET /oligarchs/1/edit
  def edit
  end

  # POST /oligarchs
  # POST /oligarchs.json
  def create
    @oligarch = Oligarch.new(oligarch_params)

    respond_to do |format|
      if @oligarch.save
        format.html { redirect_to @oligarch, notice: 'Oligarch was successfully created.' }
        format.json { render action: 'show', status: :created, location: @oligarch }
      else
        format.html { render action: 'new' }
        format.json { render json: @oligarch.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /oligarchs/1
  # PATCH/PUT /oligarchs/1.json
  def update
    respond_to do |format|
      if @oligarch.update(oligarch_params)
        format.html { redirect_to @oligarch, notice: 'Oligarch was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @oligarch.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /oligarchs/1
  # DELETE /oligarchs/1.json
  def destroy
    @oligarch.destroy
    respond_to do |format|
      format.html { redirect_to oligarchs_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_oligarch
      @oligarch = Oligarch.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def oligarch_params
      params.require(:oligarch).permit(:name, :rank, :age, :net_worth, :properties, :deceased)
    end
end
