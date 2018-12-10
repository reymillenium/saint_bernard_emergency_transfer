class PatientsController < ApplicationController

  # Estipulamos un callback para ejecutarse antes de cada acción en que lo necesitemos (show, edit, update and destroy)
  before_action :set_patient, only: [:show, :edit, :update, :destroy]

  # ********************************************************************************************************************
  # *                                           *** C R E A T E ***                                                    *
  # ********************************************************************************************************************

  # Muestra la vista new con el formulario para crear un nuevo paciente
  def new

    # I get the whole list of the facilities
    @facilities = Facility.all

    # Creamos una instancia de tipo Patient y se lo enviamos a la vista new
    @patient = Patient.new
  end

  # Almacena (crea) un nuevo Patient en la BD a partir de los datos recibidos desde el formulario en la vista new
  def create
    # Imprime en pantalla en texto plano todos los datos del Patient que se reciben (para ver si se reciben tan solo)
    # render plain: params[:patient].inspect

    # Creamos una variable de tipo Patient y la rellenamos con los datos recibidos desde el formulario en patient_params
    @patient = Patient.new patient_params


    #   if @patient.save
    #     render :show
    # else
    #   raise @patient.errors
    # end

    # Almacenamos el Patient en la BD
    @patient.save

    # Redireccionamos hacia el path del Patient recién creado (lo cambiamos hacia el listado de pacientes)
    # redirect_to @patient

    # Renderizamos la vista view, pero obteniendo antes todas las variables que ella necesita (It works!)
    # @patients = Patient.all
    # render action: "index"

    # Redireccionamos hacia la accción index, la cual hace todas las cosas lo que la vista index necesita (It works!)
    # redirect_to action: "index"

    # Otra forma de redireccionar (It works too!
    redirect_to patients_path
  end


  # ********************************************************************************************************************
  # *                                           *** R E N D E R ***                                                    *
  # ********************************************************************************************************************

  # Muestra el listado de todas los Patients  en la BD
  def index
    # Creo una variable y allí almaceno todas los Patient en la BD
    @patients = Patient.all
  end

  # Muestra la vista con los datos de un Patient
  def show
    # Buscamos el Patient en la BD y lo almacenamos en una variable
    # @patient = Patient.find params[:id]
  end


  # ********************************************************************************************************************
  # *                                           *** U P D A T E ***                                                    *
  # ********************************************************************************************************************

  # Muestra la vista con un formulario de edición con los datos de un Patient para ser modificada
  def edit
    # Buscamos el Patient que queremos editar en la BD y la almacenamos en una variable
    # @patient = Patient.find params[:id]
  end

  # Se va a encargar de actualizar la información en la BD, dl Patient que estamos enviando desde el formulario de edición en la vista edit
  def update
    # Buscamos el Patient original en la Bd a partir del ID que estamos recibiendo
    # @patient = Patient.find params[:id]

    # Actualizamos el Patient hallado en la BD con los nuevos datos recibidos desde el formulario de edición en la vista edit
    @patient.update patient_params

    # Redireccionamos al usuario hacia el path del Patient que acabamos de actualizar (Lo cambiamos. Ahora es hacia el listado de pacientes)
    # redirect_to @patient

    # Redireccionamos hacia la accción index, la cual hace todas las cosas lo que la vista index necesita (It works!)
    # redirect_to action: "index"

    # Otra forma de redireccionar (It works too!)
    redirect_to patients_path
  end


  # ********************************************************************************************************************
  # *                                          *** D E S T R O Y ***                                                   *
  # ********************************************************************************************************************

  # Se encarga de destruir o eliminar en la BD un Patient que estamos enviando
  def destroy
    # Buscamos el Patient original en la Bd a partir del ID que estamos recibiendo
    # @patient = Patient.find params[:id]

    # Destruimos el Patient en la BD
    @patient.destroy

    # Redireccionamos hacia el listado de pacientes (index)
    # redirect_to action: "index"

    # Otra forma de redireccionar (It works too!)
    redirect_to patients_path
  end


  # ********************************************************************************************************************
  # *                                   *** O T H E R    M E T H O D S ***                                             *
  # ********************************************************************************************************************


  # def emergency_transfer_summary
  #   # @myName = 'Reinier'
  #   render 'patients/emergency_transfer_summary'
  # end


  private

  def patient_params
    params.require(:patient).permit :first_name, :middle_name, :last_name, :mr, :dob, :gender, :admission, :allergies,
                                    :chronic_conditions, :medications, :diagnostic_procedures, :diagnoses, :treatments

    # params.require(:patient).permit(:medications, medications: [])
  end

  # Implementamos el callback set_patient, que se va a ejecutar antes de cada acción en que lo necesitemos (show, edit, update and destroy)
  def set_patient
    # Buscamos el Patient original en la Bd a partir del ID que estamos recibiendo
    @patient = Patient.find params[:id]
  end


end
