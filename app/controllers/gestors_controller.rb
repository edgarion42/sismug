class GestorsController < ApplicationController
	before_action :signed_in_user, only: [:index, :edit, :update, :show]
	
  def show
  	@gestor = Gestor.find(params[:id])
    @gestions = @gestor.gestions.paginate(page: params[:page])
  end

  def new
  	@gestor = Gestor.new
  end

  private

    #def signed_in_user
      #redirect_to root_path, notice: "Por favor logueate" unless signed_in?
    #end
end
