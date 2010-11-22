class RecortablesController < ApplicationController

  def index
    @recortables = Recortable.all
  end
  
  def show
    @recortable = Recortable.find(params[:id])
  end
  
  def new
    @recortable = Recortable.new(:color_fondo => '#118833', :color_aristas => '#442211')
    carga_combos
  end
  
  def create
    @recortable = Recortable.new(params[:recortable])
    if @recortable.save
      #flash[:notice] = t :recortable_creado

      if params[:commit] == t(:previsualizar)
        redirect_to edit_recortable_path(@recortable)
      else
        redirect_to @recortable
      end

    else
      carga_combos
      render :action => 'new'
    end
  end
  
  def edit
    @recortable = Recortable.find(params[:id])
    carga_combos
  end
  
  def update    
    @recortable = Recortable.find(params[:id])
    if @recortable.update_attributes(params[:recortable])
      #flash[:notice] = t :recortable_actualizado
      if params[:commit] == t(:previsualizar)
        redirect_to edit_recortable_path(@recortable)
      else
        redirect_to root_path
      end
    else
      carga_combos
      render :action => 'edit'
    end
  end
  
  def destroy
    @recortable = Recortable.find(params[:id])
    @recortable.destroy
    #flash[:notice] = t :recortable_eliminado
    redirect_to root_path
  end

  def carga_combos
    @modelos = Modelo.lista_select    
    @complejidad = Recortable.lista_select_complejidad
    @grosor_aristas = Recortable.lista_select_grosor_aristas
  end
  private :carga_combos

end
