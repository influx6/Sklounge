require "spec_helper"

describe StaticsController do
  describe "routing" do

    it "recognizes and generates #index" do
      { :get => "/statics" }.should route_to(:controller => "statics", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/statics/new" }.should route_to(:controller => "statics", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/statics/1" }.should route_to(:controller => "statics", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/statics/1/edit" }.should route_to(:controller => "statics", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/statics" }.should route_to(:controller => "statics", :action => "create")
    end

    it "recognizes and generates #update" do
      { :put => "/statics/1" }.should route_to(:controller => "statics", :action => "update", :id => "1")
    end

    it "recognizes and generates #destroy" do
      { :delete => "/statics/1" }.should route_to(:controller => "statics", :action => "destroy", :id => "1")
    end

  end
end
