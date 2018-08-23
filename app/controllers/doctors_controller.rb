# frozen_string_literal: true

class DoctorsController < ProtectedController
  before_action :set_doctor, only: %i[show destroy]

  # GET /doctors
  def index
    @doctors = current_user.doctors.all

    render json: @doctors
  end

  # GET /doctors/1
  def show
    render json: @doctor
  end

  # POST /doctors
  def create
    @doctor = current_user.doctors.build(doctor_params)

    if @doctor.save
      render json: @doctor, status: :created
    else
      render json: @doctor.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /doctors/1
  def update
    @doctor = current_user.doctors.find(params[:id])
    if @doctor.update(doctor_params)
      render json: @doctor
    else
      render json: @doctor.errors, status: :unprocessable_entity
    end
  end

  # DELETE /doctors/1
  def destroy
    @doctor.destroy
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_doctor
    @doctor = Doctor.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def doctor_params
    params.require(:doctor).permit(:name,
                                   :specialty,
                                   :hospital,
                                   :location,
                                   :user_id)
  end
end
