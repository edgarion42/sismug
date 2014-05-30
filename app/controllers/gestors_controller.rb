class GestorsController < ApplicationController
	
  def show
  	@gestor = Gestor.find(params[:id])
  end

  def new
  	@gestor = Gestor.new
  end
end
