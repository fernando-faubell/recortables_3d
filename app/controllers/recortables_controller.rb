class RecortablesController < ApplicationController
  def index
    @recortables = Recortable.all
  end
  
  def show
    @recortable = Recortable.find(params[:id])
  end
  
  def new
    @recortable = Recortable.new
  end
  
  def create
    @recortable = Recortable.new(params[:recortable])
    if @recortable.save
      flash[:notice] = "Successfully created recortable."
      redirect_to @recortable
    else
      render :action => 'new'
    end
  end
  
  def edit
    @recortable = Recortable.find(params[:id])
  end
  
  def update
    @recortable = Recortable.find(params[:id])
    if @recortable.update_attributes(params[:recortable])
      flash[:notice] = "Successfully updated recortable."
      redirect_to @recortable
    else
      render :action => 'edit'
    end
  end
  
  def destroy
    @recortable = Recortable.find(params[:id])
    @recortable.destroy
    flash[:notice] = "Successfully destroyed recortable."
    redirect_to recortables_url
  end
end
