require File.dirname(__FILE__) + '/../spec_helper'
 
describe ImagensController do
  fixtures :all
  integrate_views
  
  it "index action should render index template" do
    get :index
    response.should render_template(:index)
  end
  
  it "show action should render show template" do
    get :show, :id => Imagen.first
    response.should render_template(:show)
  end
  
  it "new action should render new template" do
    get :new
    response.should render_template(:new)
  end
  
  it "create action should render new template when model is invalid" do
    Imagen.any_instance.stubs(:valid?).returns(false)
    post :create
    response.should render_template(:new)
  end
  
  it "create action should redirect when model is valid" do
    Imagen.any_instance.stubs(:valid?).returns(true)
    post :create
    response.should redirect_to(imagen_url(assigns[:imagen]))
  end
  
  it "edit action should render edit template" do
    get :edit, :id => Imagen.first
    response.should render_template(:edit)
  end
  
  it "update action should render edit template when model is invalid" do
    Imagen.any_instance.stubs(:valid?).returns(false)
    put :update, :id => Imagen.first
    response.should render_template(:edit)
  end
  
  it "update action should redirect when model is valid" do
    Imagen.any_instance.stubs(:valid?).returns(true)
    put :update, :id => Imagen.first
    response.should redirect_to(imagen_url(assigns[:imagen]))
  end
  
  it "destroy action should destroy model and redirect to index action" do
    imagen = Imagen.first
    delete :destroy, :id => imagen
    response.should redirect_to(imagens_url)
    Imagen.exists?(imagen.id).should be_false
  end
end
