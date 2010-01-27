require 'spec_helper'

describe RecortablesController do
  describe "routing" do
    it "recognizes and generates #index" do
      { :get => "/recortables" }.should route_to(:controller => "recortables", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/recortables/new" }.should route_to(:controller => "recortables", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/recortables/1" }.should route_to(:controller => "recortables", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/recortables/1/edit" }.should route_to(:controller => "recortables", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/recortables" }.should route_to(:controller => "recortables", :action => "create")
    end

    it "recognizes and generates #update" do
      { :put => "/recortables/1" }.should route_to(:controller => "recortables", :action => "update", :id => "1")
    end

    it "recognizes and generates #destroy" do
      { :delete => "/recortables/1" }.should route_to(:controller => "recortables", :action => "destroy", :id => "1")
    end
  end
end
