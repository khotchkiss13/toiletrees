class BathroomsController < ApplicationController
  before_action :set_bathroom, only: [:show, :edit, :update, :destroy]

  # GET /bathrooms
  # GET /bathrooms.json
  def index
    @bathrooms = Bathroom.all
  end

  # GET /bathrooms/1
  # GET /bathrooms/1.json
  def show
  end

  # GET /bathrooms/new
  def new
    @bathroom = Bathroom.new
  end

  # GET /bathrooms/1/edit
  def edit
  end

  # POST /bathrooms
  # POST /bathrooms.json
  def create
    @bathroom = Bathroom.new(bathroom_params)

    respond_to do |format|
      if @bathroom.save
        format.html { redirect_to @bathroom, notice: 'Bathroom was successfully created.' }
        format.json { render :show, status: :created, location: @bathroom }
      else
        format.html { render :new }
        format.json { render json: @bathroom.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bathrooms/1
  # PATCH/PUT /bathrooms/1.json
  def update
    respond_to do |format|
      if @bathroom.update(bathroom_params)
        format.html { redirect_to @bathroom, notice: 'Bathroom was successfully updated.' }
        format.json { render :show, status: :ok, location: @bathroom }
      else
        format.html { render :edit }
        format.json { render json: @bathroom.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bathrooms/1
  # DELETE /bathrooms/1.json
  def destroy
    @bathroom.destroy
    respond_to do |format|
      format.html { redirect_to bathrooms_url, notice: 'Bathroom was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  # POST /bathrooms/1/verify
  # POST /bathrooms/1/verify
  def verify
    @bathroom.verify
  end

  # POST /bathrooms/1/flag
  # POST /bathrooms/1/flag
  def flag
    @bathroom.flag
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bathroom
      @bathroom = Bathroom.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def bathroom_params
      params.require(:bathroom).permit(:longitude, :latitude, :location, :floor_no, :user_id, :post_time, :restroom_hours)
    end
end
