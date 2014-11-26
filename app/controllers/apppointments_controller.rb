class ApppointmentsController < ApplicationController
  before_action :set_apppointment, only: [:show, :edit, :update, :destroy]

  # GET /apppointments
  # GET /apppointments.json
  def index
    @apppointments = Apppointment.all
  end

  # GET /apppointments/1
  # GET /apppointments/1.json
  def show
  end

  # GET /apppointments/new
  def new
    @apppointment = Apppointment.new
  end

  # GET /apppointments/1/edit
  def edit
  end

  # POST /apppointments
  # POST /apppointments.json
  def create
    @apppointment = Apppointment.new(apppointment_params)

    respond_to do |format|
      if @apppointment.save
        format.html { redirect_to @apppointment, notice: 'Apppointment was successfully created.' }
        format.json { render :show, status: :created, location: @apppointment }
      else
        format.html { render :new }
        format.json { render json: @apppointment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /apppointments/1
  # PATCH/PUT /apppointments/1.json
  def update
    respond_to do |format|
      if @apppointment.update(apppointment_params)
        format.html { redirect_to @apppointment, notice: 'Apppointment was successfully updated.' }
        format.json { render :show, status: :ok, location: @apppointment }
      else
        format.html { render :edit }
        format.json { render json: @apppointment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /apppointments/1
  # DELETE /apppointments/1.json
  def destroy
    @apppointment.destroy
    respond_to do |format|
      format.html { redirect_to apppointments_url, notice: 'Apppointment was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_apppointment
      @apppointment = Apppointment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def apppointment_params
      params.require(:apppointment).permit(:title, :date, :location, :memo)
    end
end
