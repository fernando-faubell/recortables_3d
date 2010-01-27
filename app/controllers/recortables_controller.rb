class RecortablesController < ApplicationController

  def index
    @recortables = Recortable.all
  end
  
  def show
    @recortable = Recortable.find(params[:id])
  end
  
  def new
    @recortable = Recortable.new
    carga_combos
  end
  
  def create    
    @recortable = Recortable.new(params[:recortable])
    if @recortable.save
      flash[:notice] = "Recortable creado con éxito."

      if params[:commit] == "Previsualizar"
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
      flash[:notice] = "Recortable actualizado con éxito."
      if params[:commit] == "Previsualizar"
        redirect_to edit_recortable_path(@recortable)
      else
        redirect_to @recortable
      end
    else
      carga_combos
      render :action => 'edit'
    end
  end
  
  def destroy
    @recortable = Recortable.find(params[:id])
    @recortable.destroy
    flash[:notice] = "Recortable eliminado con éxito."
    redirect_to recortables_url
  end

  def carga_combos
    @modelos = Recortable.lista_select_modelos
    @complejidad = Recortable.lista_select_complejidad    
  end
  private :carga_combos

end
