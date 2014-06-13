require 'spec_helper'
describe LegislationsController do

  let(:valid_attributes) { { "status" => "MyString" } }
  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all legislations as @legislations" do
      legislation = Legislation.create! valid_attributes
      get :index, {}, valid_session
      assigns(:legislations).should eq([legislation])
    end
  end

  describe "GET show" do
    it "assigns the requested legislation as @legislation" do
      legislation = Legislation.create! valid_attributes
      get :show, {:id => legislation.to_param}, valid_session
      assigns(:legislation).should eq(legislation)
    end
  end

  describe "GET new" do
    it "assigns a new legislation as @legislation" do
      get :new, {}, valid_session
      assigns(:legislation).should be_a_new(Legislation)
    end
  end

  describe "GET edit" do
    it "assigns the requested legislation as @legislation" do
      legislation = Legislation.create! valid_attributes
      get :edit, {:id => legislation.to_param}, valid_session
      assigns(:legislation).should eq(legislation)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Legislation" do
        expect {
          post :create, {:legislation => valid_attributes}, valid_session
        }.to change(Legislation, :count).by(1)
      end

      it "assigns a newly created legislation as @legislation" do
        post :create, {:legislation => valid_attributes}, valid_session
        assigns(:legislation).should be_a(Legislation)
        assigns(:legislation).should be_persisted
      end

      it "redirects to the created legislation" do
        post :create, {:legislation => valid_attributes}, valid_session
        response.should redirect_to(Legislation.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved legislation as @legislation" do
        # Trigger the behavior that occurs when invalid params are submitted
        Legislation.any_instance.stub(:save).and_return(false)
        post :create, {:legislation => { "status" => "invalid value" }}, valid_session
        assigns(:legislation).should be_a_new(Legislation)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Legislation.any_instance.stub(:save).and_return(false)
        post :create, {:legislation => { "status" => "invalid value" }}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested legislation" do
        legislation = Legislation.create! valid_attributes
        # Assuming there are no other legislations in the database, this
        # specifies that the Legislation created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        Legislation.any_instance.should_receive(:update).with({ "status" => "MyString" })
        put :update, {:id => legislation.to_param, :legislation => { "status" => "MyString" }}, valid_session
      end

      it "assigns the requested legislation as @legislation" do
        legislation = Legislation.create! valid_attributes
        put :update, {:id => legislation.to_param, :legislation => valid_attributes}, valid_session
        assigns(:legislation).should eq(legislation)
      end

      it "redirects to the legislation" do
        legislation = Legislation.create! valid_attributes
        put :update, {:id => legislation.to_param, :legislation => valid_attributes}, valid_session
        response.should redirect_to(legislation)
      end
    end

    describe "with invalid params" do
      it "assigns the legislation as @legislation" do
        legislation = Legislation.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Legislation.any_instance.stub(:save).and_return(false)
        put :update, {:id => legislation.to_param, :legislation => { "status" => "invalid value" }}, valid_session
        assigns(:legislation).should eq(legislation)
      end

      it "re-renders the 'edit' template" do
        legislation = Legislation.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Legislation.any_instance.stub(:save).and_return(false)
        put :update, {:id => legislation.to_param, :legislation => { "status" => "invalid value" }}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested legislation" do
      legislation = Legislation.create! valid_attributes
      expect {
        delete :destroy, {:id => legislation.to_param}, valid_session
      }.to change(Legislation, :count).by(-1)
    end

    it "redirects to the legislations list" do
      legislation = Legislation.create! valid_attributes
      delete :destroy, {:id => legislation.to_param}, valid_session
      response.should redirect_to(legislations_url)
    end
  end

end
