require File.dirname(__FILE__) + '/../spec_helper'
 
describe RecortablesController do
#  fixtures :all
#  integrate_views
#
#  it "index action should render index template" do
#    get :index
#    response.should render_template(:index)
#  end
#
#  it "show action should render show template" do
#    get :show, :id => Recortable.first
#    response.should render_template(:show)
#  end
#
#  it "new action should render new template" do
#    get :new
#    response.should render_template(:new)
#  end
#
#  it "create action should render new template when model is invalid" do
#    Recortable.any_instance.stubs(:valid?).returns(false)
#    post :create
#    response.should render_template(:new)
#  end
#
#  it "create action should redirect when model is valid" do
#    Recortable.any_instance.stubs(:valid?).returns(true)
#    post :create
#    response.should redirect_to(recortable_url(assigns[:recortable]))
#  end
#
#  it "edit action should render edit template" do
#    get :edit, :id => Recortable.first
#    response.should render_template(:edit)
#  end
#
#  it "update action should render edit template when model is invalid" do
#    Recortable.any_instance.stubs(:valid?).returns(false)
#    put :update, :id => Recortable.first
#    response.should render_template(:edit)
#  end
#
#  it "update action should redirect when model is valid" do
#    Recortable.any_instance.stubs(:valid?).returns(true)
#    put :update, :id => Recortable.first
#    response.should redirect_to(recortable_url(assigns[:recortable]))
#  end
#
#  it "destroy action should destroy model and redirect to index action" do
#    recortable = Recortable.first
#    delete :destroy, :id => recortable
#    response.should redirect_to(recortables_url)
#    Recortable.exists?(recortable.id).should be_false
#  end
end


#TODO: Generado por el rspec_scaffold.
#describe PruebasController do
#
#  def mock_prueba(stubs={})
#    @mock_prueba ||= mock_model(Prueba, stubs)
#  end
#
#  describe "GET index" do
#    it "assigns all pruebas as @pruebas" do
#      Prueba.stub(:find).with(:all).and_return([mock_prueba])
#      get :index
#      assigns[:pruebas].should == [mock_prueba]
#    end
#  end
#
#  describe "GET show" do
#    it "assigns the requested prueba as @prueba" do
#      Prueba.stub(:find).with("37").and_return(mock_prueba)
#      get :show, :id => "37"
#      assigns[:prueba].should equal(mock_prueba)
#    end
#  end
#
#  describe "GET new" do
#    it "assigns a new prueba as @prueba" do
#      Prueba.stub(:new).and_return(mock_prueba)
#      get :new
#      assigns[:prueba].should equal(mock_prueba)
#    end
#  end
#
#  describe "GET edit" do
#    it "assigns the requested prueba as @prueba" do
#      Prueba.stub(:find).with("37").and_return(mock_prueba)
#      get :edit, :id => "37"
#      assigns[:prueba].should equal(mock_prueba)
#    end
#  end
#
#  describe "POST create" do
#
#    describe "with valid params" do
#      it "assigns a newly created prueba as @prueba" do
#        Prueba.stub(:new).with({'these' => 'params'}).and_return(mock_prueba(:save => true))
#        post :create, :prueba => {:these => 'params'}
#        assigns[:prueba].should equal(mock_prueba)
#      end
#
#      it "redirects to the created prueba" do
#        Prueba.stub(:new).and_return(mock_prueba(:save => true))
#        post :create, :prueba => {}
#        response.should redirect_to(prueba_url(mock_prueba))
#      end
#    end
#
#    describe "with invalid params" do
#      it "assigns a newly created but unsaved prueba as @prueba" do
#        Prueba.stub(:new).with({'these' => 'params'}).and_return(mock_prueba(:save => false))
#        post :create, :prueba => {:these => 'params'}
#        assigns[:prueba].should equal(mock_prueba)
#      end
#
#      it "re-renders the 'new' template" do
#        Prueba.stub(:new).and_return(mock_prueba(:save => false))
#        post :create, :prueba => {}
#        response.should render_template('new')
#      end
#    end
#
#  end
#
#  describe "PUT update" do
#
#    describe "with valid params" do
#      it "updates the requested prueba" do
#        Prueba.should_receive(:find).with("37").and_return(mock_prueba)
#        mock_prueba.should_receive(:update_attributes).with({'these' => 'params'})
#        put :update, :id => "37", :prueba => {:these => 'params'}
#      end
#
#      it "assigns the requested prueba as @prueba" do
#        Prueba.stub(:find).and_return(mock_prueba(:update_attributes => true))
#        put :update, :id => "1"
#        assigns[:prueba].should equal(mock_prueba)
#      end
#
#      it "redirects to the prueba" do
#        Prueba.stub(:find).and_return(mock_prueba(:update_attributes => true))
#        put :update, :id => "1"
#        response.should redirect_to(prueba_url(mock_prueba))
#      end
#    end
#
#    describe "with invalid params" do
#      it "updates the requested prueba" do
#        Prueba.should_receive(:find).with("37").and_return(mock_prueba)
#        mock_prueba.should_receive(:update_attributes).with({'these' => 'params'})
#        put :update, :id => "37", :prueba => {:these => 'params'}
#      end
#
#      it "assigns the prueba as @prueba" do
#        Prueba.stub(:find).and_return(mock_prueba(:update_attributes => false))
#        put :update, :id => "1"
#        assigns[:prueba].should equal(mock_prueba)
#      end
#
#      it "re-renders the 'edit' template" do
#        Prueba.stub(:find).and_return(mock_prueba(:update_attributes => false))
#        put :update, :id => "1"
#        response.should render_template('edit')
#      end
#    end
#
#  end
#
#  describe "DELETE destroy" do
#    it "destroys the requested prueba" do
#      Prueba.should_receive(:find).with("37").and_return(mock_prueba)
#      mock_prueba.should_receive(:destroy)
#      delete :destroy, :id => "37"
#    end
#
#    it "redirects to the pruebas list" do
#      Prueba.stub(:find).and_return(mock_prueba(:destroy => true))
#      delete :destroy, :id => "1"
#      response.should redirect_to(pruebas_url)
#    end
#  end
#
#end






