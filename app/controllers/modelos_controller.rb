class ModelosController < ApplicationController
  def index
    @modelos = Modelo.all
  end
  
  def show
    @modelo = Modelo.find(params[:id])
  end
  
  def new
    @modelo = Modelo.new
  end
  
  def create
    @modelo = Modelo.new(params[:modelo])
    if @modelo.save
      flash[:notice] = "Successfully created modelo."
      redirect_to @modelo
    else
      render :action => 'new'
    end
  end
  
  def edit
    @modelo = Modelo.find(params[:id])
  end
  
  def update
    @modelo = Modelo.find(params[:id])
    if @modelo.update_attributes(params[:modelo])
      flash[:notice] = "Successfully updated modelo."
      redirect_to @modelo
    else
      render :action => 'edit'
    end
  end
  
  def destroy
    @modelo = Modelo.find(params[:id])
    @modelo.destroy
    flash[:notice] = "Successfully destroyed modelo."
    redirect_to modelos_url
  end
end
