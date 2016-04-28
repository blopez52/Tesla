class HomeBatteriesController < ApplicationController
  before_action :set_home_battery, only: [:show, :edit, :update, :destroy]

  # GET /home_batteries
  # GET /home_batteries.json
  def index
    @home_batteries = HomeBattery.all
  end

  # GET /home_batteries/1
  # GET /home_batteries/1.json
  def show
  end

  # GET /home_batteries/new
  def new
    @home_battery = HomeBattery.new
  end

  # GET /home_batteries/1/edit
  def edit
  end

  # POST /home_batteries
  # POST /home_batteries.json
  def create
    @home_battery = HomeBattery.new(home_battery_params)

    respond_to do |format|
      if @home_battery.save
        format.html { redirect_to @home_battery, notice: 'Home battery was successfully created.' }
        format.json { render :show, status: :created, location: @home_battery }
      else
        format.html { render :new }
        format.json { render json: @home_battery.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /home_batteries/1
  # PATCH/PUT /home_batteries/1.json
  def update
    respond_to do |format|
      if @home_battery.update(home_battery_params)
        format.html { redirect_to @home_battery, notice: 'Home battery was successfully updated.' }
        format.json { render :show, status: :ok, location: @home_battery }
      else
        format.html { render :edit }
        format.json { render json: @home_battery.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /home_batteries/1
  # DELETE /home_batteries/1.json
  def destroy
    @home_battery.destroy
    respond_to do |format|
      format.html { redirect_to home_batteries_url, notice: 'Home battery was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_home_battery
      @home_battery = HomeBattery.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def home_battery_params
      params.fetch(:home_battery, {})
    end
end
