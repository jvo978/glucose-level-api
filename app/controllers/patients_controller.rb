# frozen_string_literal: true

class PatientsController < ProtectedController
  before_action :set_patient, only: %i[show update destroy]

  # GET /patients
  # def index
  #   @patients = Patient.where(doctor_id: current_doctor.id)
  #   render json: @patients
  # end

  # GET /patients/1
  def show
    render json: @patient
  end
  # POST /patients

  def create
    @patient = current_user.doctors.find(patient_params[:doctor_id]).patients.build(patient_params)

    if @patient.save
      render json: @patient, status: :created
    else
      render json: @patient.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /patients/1
  def update
    if @patient.update(patient_params)
      render json: @patient
    else
      render json: @patient.errors, status: :unprocessable_entity
    end
  end

  # DELETE /patients/1
  def destroy
    @patient.destroy
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_patient
    @patient = Patient.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def patient_params
    params.require(:patient).permit(:name,
                                    :age,
                                    :weight,
                                    :glucose,
                                    :test,
                                    :date,
                                    :created_at,
                                    :updated_at,
                                    :doctor_id)
  end
end
