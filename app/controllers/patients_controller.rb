class PatientsController < ApplicationController

  # I set a callback to be executed before each actions that needs it (show only in this case)
  before_action :set_patient, only: [:transfer]

  # ********************************************************************************************************************
  # *                                           *** R E N D E R ***                                                    *
  # ********************************************************************************************************************

  # Shows the index view, with the list of all the Patients in the DB
  def index
    # I store in a variable all the Patients in the DB
    @patients = Patient.all
  end

  # Shows the show view, with all the data of one selected Patient
  def transfer
    # I search the facility and it's sended also to the transfer view
    @facility = Facility.first
  end

  private

  # Implementation of the Callback set_patient, to be executed  before each actions that needs it (show only in this case)
  def set_patient
    # It search the Patient in the DB by using the patient_id that it is receiving
    @patient = Patient.find params[:patient_id]
  end

end