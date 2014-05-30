class PersonasController < ApplicationController
  
  def show
  	@persona = Persona.find(params[:id])
  end

  def new
  	@persona = Persona.new
  end

  def create
    @persona = Persona.new(persona_params)    # Not the final implementation!
    if @persona.save
    	flash[:success] = "¡Persona Creada con Exito!"
      redirect_to @persona
    else
      render 'new'
    end
  end

  private

  	def persona_params
			params.require(:persona).permit(:nombre1, :nombre2, :apellido1, :apellido2, :direccion, :fecha_nacimiento, :telefono, :curp)
  	end
end
