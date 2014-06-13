require 'spec_helper'

describe WardsController do

  let(:valid_attributes) { { "ward_number" => "1" } }

  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all wards as @wards" do
      ward = Ward.create! valid_attributes
      get :index, {}, valid_session
      assigns(:wards).should eq([ward])
    end
  end

  describe "GET show" do
    it "assigns the requested ward as @ward" do
      ward = Ward.create! valid_attributes
      get :show, {:id => ward.to_param}, valid_session
      assigns(:ward).should eq(ward)
    end
  end

  describe "GET new" do
    it "assigns a new ward as @ward" do
      get :new, {}, valid_session
      assigns(:ward).should be_a_new(Ward)
    end
  end

  describe "GET edit" do
    it "assigns the requested ward as @ward" do
      ward = Ward.create! valid_attributes
      get :edit, {:id => ward.to_param}, valid_session
      assigns(:ward).should eq(ward)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Ward" do
        expect {
          post :create, {:ward => valid_attributes}, valid_session
        }.to change(Ward, :count).by(1)
      end

      it "assigns a newly created ward as @ward" do
        post :create, {:ward => valid_attributes}, valid_session
        assigns(:ward).should be_a(Ward)
        assigns(:ward).should be_persisted
      end

      it "redirects to the created ward" do
        post :create, {:ward => valid_attributes}, valid_session
        response.should redirect_to(Ward.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved ward as @ward" do
        # Trigger the behavior that occurs when invalid params are submitted
        Ward.any_instance.stub(:save).and_return(false)
        post :create, {:ward => { "ward_number" => "invalid value" }}, valid_session
        assigns(:ward).should be_a_new(Ward)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Ward.any_instance.stub(:save).and_return(false)
        post :create, {:ward => { "ward_number" => "invalid value" }}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested ward" do
        ward = Ward.create! valid_attributes
        # Assuming there are no other wards in the database, this
        # specifies that the Ward created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        Ward.any_instance.should_receive(:update).with({ "ward_number" => "1" })
        put :update, {:id => ward.to_param, :ward => { "ward_number" => "1" }}, valid_session
      end

      it "assigns the requested ward as @ward" do
        ward = Ward.create! valid_attributes
        put :update, {:id => ward.to_param, :ward => valid_attributes}, valid_session
        assigns(:ward).should eq(ward)
      end

      it "redirects to the ward" do
        ward = Ward.create! valid_attributes
        put :update, {:id => ward.to_param, :ward => valid_attributes}, valid_session
        response.should redirect_to(ward)
      end
    end

    describe "with invalid params" do
      it "assigns the ward as @ward" do
        ward = Ward.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Ward.any_instance.stub(:save).and_return(false)
        put :update, {:id => ward.to_param, :ward => { "ward_number" => "invalid value" }}, valid_session
        assigns(:ward).should eq(ward)
      end

      it "re-renders the 'edit' template" do
        ward = Ward.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Ward.any_instance.stub(:save).and_return(false)
        put :update, {:id => ward.to_param, :ward => { "ward_number" => "invalid value" }}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested ward" do
      ward = Ward.create! valid_attributes
      expect {
        delete :destroy, {:id => ward.to_param}, valid_session
      }.to change(Ward, :count).by(-1)
    end

    it "redirects to the wards list" do
      ward = Ward.create! valid_attributes
      delete :destroy, {:id => ward.to_param}, valid_session
      response.should redirect_to(wards_url)
    end
  end

end
