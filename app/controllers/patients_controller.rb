class PatientsController < ApplicationController
    
    before_action :set_patient, only: [:show, :edit, :update, :destroy]

    def index
        @patients = Patient.all
    end

    def show
    end

    def new
        @patient = Patient.new
    end

    def create

        Patient.create(patient_params)

        redirect_to patients_path
    end

    def edit
    end

    def update
        @patient.update(patient_params)

        redirect_to patients_path
    end

    def destroy
        @patient.destroy

        redirect_to patients_path
    end


    private

    def set_patient
        @patient = Patient.find(params[:id])
    end

    def patient_params
        params.require(:patient).permit(:first_name, :last_name, :diagnosis, :born_on)
    end


end
