require 'spec_helper'


describe AldermenController do
  let(:valid_attributes) { { "ward" => "" } }
  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all aldermen as @aldermen" do
      alderman = Alderman.create! valid_attributes
      get :index, {}, valid_session
      assigns(:aldermen).should eq([alderman])
    end
  end

  describe "GET show" do
    it "assigns the requested alderman as @alderman" do
      alderman = Alderman.create! valid_attributes
      get :show, {:id => alderman.to_param}, valid_session
      assigns(:alderman).should eq(alderman)
    end
  end

  describe "GET new" do
    it "assigns a new alderman as @alderman" do
      get :new, {}, valid_session
      assigns(:alderman).should be_a_new(Alderman)
    end
  end

  describe "GET edit" do
    it "assigns the requested alderman as @alderman" do
      alderman = Alderman.create! valid_attributes
      get :edit, {:id => alderman.to_param}, valid_session
      assigns(:alderman).should eq(alderman)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Alderman" do
        expect {
          post :create, {:alderman => valid_attributes}, valid_session
        }.to change(Alderman, :count).by(1)
      end

      it "assigns a newly created alderman as @alderman" do
        post :create, {:alderman => valid_attributes}, valid_session
        assigns(:alderman).should be_a(Alderman)
        assigns(:alderman).should be_persisted
      end

      it "redirects to the created alderman" do
        post :create, {:alderman => valid_attributes}, valid_session
        response.should redirect_to(Alderman.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved alderman as @alderman" do
        # Trigger the behavior that occurs when invalid params are submitted
        Alderman.any_instance.stub(:save).and_return(false)
        post :create, {:alderman => { "ward" => "invalid value" }}, valid_session
        assigns(:alderman).should be_a_new(Alderman)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Alderman.any_instance.stub(:save).and_return(false)
        post :create, {:alderman => { "ward" => "invalid value" }}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested alderman" do
        alderman = Alderman.create! valid_attributes
        # Assuming there are no other aldermen in the database, this
        # specifies that the Alderman created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        Alderman.any_instance.should_receive(:update).with({ "ward" => "" })
        put :update, {:id => alderman.to_param, :alderman => { "ward" => "" }}, valid_session
      end

      it "assigns the requested alderman as @alderman" do
        alderman = Alderman.create! valid_attributes
        put :update, {:id => alderman.to_param, :alderman => valid_attributes}, valid_session
        assigns(:alderman).should eq(alderman)
      end

      it "redirects to the alderman" do
        alderman = Alderman.create! valid_attributes
        put :update, {:id => alderman.to_param, :alderman => valid_attributes}, valid_session
        response.should redirect_to(alderman)
      end
    end

    describe "with invalid params" do
      it "assigns the alderman as @alderman" do
        alderman = Alderman.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Alderman.any_instance.stub(:save).and_return(false)
        put :update, {:id => alderman.to_param, :alderman => { "ward" => "invalid value" }}, valid_session
        assigns(:alderman).should eq(alderman)
      end

      it "re-renders the 'edit' template" do
        alderman = Alderman.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Alderman.any_instance.stub(:save).and_return(false)
        put :update, {:id => alderman.to_param, :alderman => { "ward" => "invalid value" }}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested alderman" do
      alderman = Alderman.create! valid_attributes
      expect {
        delete :destroy, {:id => alderman.to_param}, valid_session
      }.to change(Alderman, :count).by(-1)
    end

    it "redirects to the aldermen list" do
      alderman = Alderman.create! valid_attributes
      delete :destroy, {:id => alderman.to_param}, valid_session
      response.should redirect_to(aldermen_url)
    end
  end

end
