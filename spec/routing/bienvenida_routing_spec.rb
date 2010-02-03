require 'spec_helper'

describe BienvenidaController do
  describe "routing" do

    it "reconoce y genera #show" do
      { :get => "/bienvenida" }.should route_to(:controller => "bienvenida", :action => "show")
    end

    it "es reconocido com el principal de la aplicacion" do
      pending
      { :get => "/" }.should route_to(:controller => "bienvenida", :action => "show")
    end

  end
end
