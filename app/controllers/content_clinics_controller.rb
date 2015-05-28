class ContentClinicsController < ApplicationController
  before_action :set_content_clinic, only: [:show, :edit, :update, :destroy]

  # GET /content_clinics
  # GET /content_clinics.json
  def index
    @content_clinics = ContentClinic.all
  end

  # GET /content_clinics/1
  # GET /content_clinics/1.json
  def show
  end

  # GET /content_clinics/new
  def new
    @content_clinic = ContentClinic.new
  end

  # GET /content_clinics/1/edit
  def edit
  end

  # POST /content_clinics
  # POST /content_clinics.json
  def create
    @content_clinic = ContentClinic.new(content_clinic_params)

    respond_to do |format|
      if @content_clinic.save
        format.html { redirect_to @content_clinic, notice: 'Klinika została pomyślnie dodana.' }
        format.json { render :show, status: :created, location: @content_clinic }
      else
        format.html { render :new }
        format.json { render json: @content_clinic.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /content_clinics/1
  # PATCH/PUT /content_clinics/1.json
  def update
    respond_to do |format|
      if @content_clinic.update(content_clinic_params)
        format.html { redirect_to @content_clinic, notice: 'Klinika została pomyślnie zaktualizowana.' }
        format.json { render :show, status: :ok, location: @content_clinic }
      else
        format.html { render :edit }
        format.json { render json: @content_clinic.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /content_clinics/1
  # DELETE /content_clinics/1.json
  def destroy
    @content_clinic.destroy
    respond_to do |format|
      format.html { redirect_to content_clinics_url, notice: 'Klinika została usunięta.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_content_clinic
      @content_clinic = ContentClinic.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def content_clinic_params
      params.require(:content_clinic).permit(:name_clinic, :adress_clinic, :zip_code_clinic, :city_linic)
    end
end
