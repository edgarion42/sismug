class GestionsController < ApplicationController
  before_action :signed_in_user

  def create
  	@gestions = current_user.gestions.build(gestions_params)
    if @gestions.save
      flash[:success] = "¡Gestion Creada!"
      redirect_to personas_path
    else
      redirect_to personas_path
    end
  end

  def destroy
  end

  private

    def gestions_params
      params.require(:gestion).permit(:descripcion)
    end
end