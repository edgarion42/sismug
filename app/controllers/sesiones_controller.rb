class SesionesController < ApplicationController

	def new
  end

  def create
  	gestor = Gestor.find_by(gnombre1: params[:sesion][:gnombre1])
    if gestor && gestor.authenticate(params[:sesion][:password])
      sign_in gestor
      redirect_to gestor
    else
      flash.now[:error] = 'Combinacion de Nombre/Password incorrecta'
      render 'new'
    end
  end

  def destroy
    sign_out
    redirect_to root_url
  end
end
