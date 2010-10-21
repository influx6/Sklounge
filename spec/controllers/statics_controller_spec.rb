require 'spec_helper'

describe StaticsController do

  def mock_static(stubs={})
    @mock_static ||= mock_model(Static, stubs).as_null_object
  end

  describe "GET index" do
    it "assigns all statics as @statics" do
      Static.stub(:all) { [mock_static] }
      get :index
      assigns(:statics).should eq([mock_static])
    end
  end

  describe "GET show" do
    it "assigns the requested static as @static" do
      Static.stub(:find).with("37") { mock_static }
      get :show, :id => "37"
      assigns(:static).should be(mock_static)
    end
  end

  describe "GET new" do
    it "assigns a new static as @static" do
      Static.stub(:new) { mock_static }
      get :new
      assigns(:static).should be(mock_static)
    end
  end

  describe "GET edit" do
    it "assigns the requested static as @static" do
      Static.stub(:find).with("37") { mock_static }
      get :edit, :id => "37"
      assigns(:static).should be(mock_static)
    end
  end

  describe "POST create" do

    describe "with valid params" do
      it "assigns a newly created static as @static" do
        Static.stub(:new).with({'these' => 'params'}) { mock_static(:save => true) }
        post :create, :static => {'these' => 'params'}
        assigns(:static).should be(mock_static)
      end

      it "redirects to the created static" do
        Static.stub(:new) { mock_static(:save => true) }
        post :create, :static => {}
        response.should redirect_to(static_url(mock_static))
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved static as @static" do
        Static.stub(:new).with({'these' => 'params'}) { mock_static(:save => false) }
        post :create, :static => {'these' => 'params'}
        assigns(:static).should be(mock_static)
      end

      it "re-renders the 'new' template" do
        Static.stub(:new) { mock_static(:save => false) }
        post :create, :static => {}
        response.should render_template("new")
      end
    end

  end

  describe "PUT update" do

    describe "with valid params" do
      it "updates the requested static" do
        Static.should_receive(:find).with("37") { mock_static }
        mock_static.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :static => {'these' => 'params'}
      end

      it "assigns the requested static as @static" do
        Static.stub(:find) { mock_static(:update_attributes => true) }
        put :update, :id => "1"
        assigns(:static).should be(mock_static)
      end

      it "redirects to the static" do
        Static.stub(:find) { mock_static(:update_attributes => true) }
        put :update, :id => "1"
        response.should redirect_to(static_url(mock_static))
      end
    end

    describe "with invalid params" do
      it "assigns the static as @static" do
        Static.stub(:find) { mock_static(:update_attributes => false) }
        put :update, :id => "1"
        assigns(:static).should be(mock_static)
      end

      it "re-renders the 'edit' template" do
        Static.stub(:find) { mock_static(:update_attributes => false) }
        put :update, :id => "1"
        response.should render_template("edit")
      end
    end

  end

  describe "DELETE destroy" do
    it "destroys the requested static" do
      Static.should_receive(:find).with("37") { mock_static }
      mock_static.should_receive(:destroy)
      delete :destroy, :id => "37"
    end

    it "redirects to the statics list" do
      Static.stub(:find) { mock_static }
      delete :destroy, :id => "1"
      response.should redirect_to(statics_url)
    end
  end

end
