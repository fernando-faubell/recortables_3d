class ImagenesController < ApplicationController
  def index
    @imagenes = Imagen.all
  end
  
  def show
    @imagen = Imagen.find(params[:id])
  end
  
  def new
    @imagen = Imagen.new
  end
  
  def create
    @imagen = Imagen.new(params[:imagen])
    if @imagen.save
      flash[:notice] = "Successfully created imagen."
      redirect_to @imagen
    else
      render :action => 'new'
    end
  end
  
  def edit
    @imagen = Imagen.find(params[:id])
  end
  
  def update
    @imagen = Imagen.find(params[:id])
    if @imagen.update_attributes(params[:imagen])
      flash[:notice] = "Successfully updated imagen."
      redirect_to @imagen
    else
      render :action => 'edit'
    end
  end
  
  def destroy
    @imagen = Imagen.find(params[:id])
    @imagen.destroy
    flash[:notice] = "Successfully destroyed imagen."
    redirect_to imagenes_url
  end
end
