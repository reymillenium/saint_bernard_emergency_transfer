class PatientsController < ApplicationController

  # Estipulamos un callback para ejecutarse antes de cada acción en que lo necesitemos (show, edit, update and destroy)
  before_action :set_patient, only: [:transfer]


  # ********************************************************************************************************************
  # *                                           *** R E N D E R ***                                                    *
  # ********************************************************************************************************************

  # Muestra el listado de todas los Patients  en la BD
  def index
    # Creo una variable y allí almaceno todas los Patient en la BD
    @patients = Patient.all
  end

  # Muestra la vista con los datos de un Patient
  def transfer
    # Buscamos el Patient en la BD y lo almacenamos en una variable
    # @patient = Patient.find params[:id]

    # I search the facility and it's sended to the transfer view
    @facility = Facility.first
  end

  private

  # Implementamos el callback set_patient, que se va a ejecutar antes de cada acción en que lo necesitemos (show, edit, update and destroy)
  def set_patient
    # Buscamos el Patient original en la Bd a partir del ID que estamos recibiendo
    @patient = Patient.find params[:patient_id]
  end


end
