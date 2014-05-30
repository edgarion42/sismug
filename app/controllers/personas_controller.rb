class PersonasController < ApplicationController
  before_action :signed_in_user, only: [:index, :edit, :update, :show, :new, :destroy]
  
  def show
  	@persona = Persona.find(params[:id])
  end

  def new
  	@persona = Persona.new
  end

  def create
    @persona = Persona.new(persona_params)
    if @persona.save
    	flash[:success] = "¡Persona Creada con Exito!"
      redirect_to personas_path
    else
      render 'new'
    end
  end

  def index
    @personas = Persona.paginate(page: params[:page])
  end

  def destroy
    Persona.find(params[:id]).destroy
    flash[:success] = "Usuario Eliminado"
    redirect_to personas_path
  end

  private

  	def persona_params
			params.require(:persona).permit(:nombre1, :nombre2, :apellido1, :apellido2, :direccion, :fecha_nacimiento, :telefono, :curp)
  	end

    def signed_in_user
      redirect_to root_path, notice: "Por favor logueate" unless signed_in?
    end
end
