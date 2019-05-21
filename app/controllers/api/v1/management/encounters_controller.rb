class Management::EncountersController < ApplicationController
  before_action :set_management_encounter, only: [:show, :update, :destroy]

  # GET /management/encounters
  def index
    @management_encounters = Management::Encounter.all

    render json: @management_encounters
  end

  # GET /management/encounters/1
  def show
    render json: @management_encounter
  end

  # POST /management/encounters
  def create
    @management_encounter = Management::Encounter.new(management_encounter_params)

    if @management_encounter.save
      render json: @management_encounter, status: :created, location: @management_encounter
    else
      render json: @management_encounter.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /management/encounters/1
  def update
    if @management_encounter.update(management_encounter_params)
      render json: @management_encounter
    else
      render json: @management_encounter.errors, status: :unprocessable_entity
    end
  end

  # DELETE /management/encounters/1
  def destroy
    @management_encounter.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_management_encounter
      @management_encounter = Management::Encounter.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def management_encounter_params
      params.require(:management_encounter).permit(:identifier, :encounter_code, :encounter_type)
    end
end
