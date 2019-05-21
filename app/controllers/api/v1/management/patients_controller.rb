class Management::PatientsController < ApplicationController
  before_action :set_management_patient, only: [:show, :update, :destroy]

  # GET /management/patients
  def index
    @management_patients = Management::Patient.all

    render json: @management_patients
  end

  # GET /management/patients/1
  def show
    render json: @management_patient
  end

  # POST /management/patients
  def create
    @management_patient = Management::Patient.new(management_patient_params)

    if @management_patient.save
      render json: @management_patient, status: :created, location: @management_patient
    else
      render json: @management_patient.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /management/patients/1
  def update
    if @management_patient.update(management_patient_params)
      render json: @management_patient
    else
      render json: @management_patient.errors, status: :unprocessable_entity
    end
  end

  # DELETE /management/patients/1
  def destroy
    @management_patient.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_management_patient
      @management_patient = Management::Patient.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def management_patient_params
      params.require(:management_patient).permit(:title, :name, :mrn, :person_id)
    end
end
