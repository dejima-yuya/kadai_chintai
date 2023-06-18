class ClosestStationsController < ApplicationController
  before_action :set_closest_station, only: %i[ show edit update destroy ]

  # GET /closest_stations or /closest_stations.json
  def index
    @closest_stations = ClosestStation.all
  end

  # GET /closest_stations/1 or /closest_stations/1.json
  def show
  end

  # GET /closest_stations/new
  def new
    @closest_station = ClosestStation.new
  end

  # GET /closest_stations/1/edit
  def edit
  end

  # POST /closest_stations or /closest_stations.json
  def create
    @closest_station = ClosestStation.new(closest_station_params)

    respond_to do |format|
      if @closest_station.save
        format.html { redirect_to @closest_station, notice: "Closest station was successfully created." }
        format.json { render :show, status: :created, location: @closest_station }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @closest_station.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /closest_stations/1 or /closest_stations/1.json
  def update
    respond_to do |format|
      if @closest_station.update(closest_station_params)
        format.html { redirect_to @closest_station, notice: "Closest station was successfully updated." }
        format.json { render :show, status: :ok, location: @closest_station }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @closest_station.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /closest_stations/1 or /closest_stations/1.json
  def destroy
    @closest_station.destroy
    respond_to do |format|
      format.html { redirect_to closest_stations_url, notice: "Closest station was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_closest_station
      @closest_station = ClosestStation.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def closest_station_params
      params.require(:closest_station).permit(:route_name, :station_name, :duration)
    end
end
