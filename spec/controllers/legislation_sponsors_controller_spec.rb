require 'spec_helper'
describe LegislationSponsorsController do

  let(:valid_attributes) { { "legislator_id" => "1" } }
  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all legislation_sponsors as @legislation_sponsors" do
      legislation_sponsor = LegislationSponsor.create! valid_attributes
      get :index, {}, valid_session
      assigns(:legislation_sponsors).should eq([legislation_sponsor])
    end
  end

  describe "GET show" do
    it "assigns the requested legislation_sponsor as @legislation_sponsor" do
      legislation_sponsor = LegislationSponsor.create! valid_attributes
      get :show, {:id => legislation_sponsor.to_param}, valid_session
      assigns(:legislation_sponsor).should eq(legislation_sponsor)
    end
  end

  describe "GET new" do
    it "assigns a new legislation_sponsor as @legislation_sponsor" do
      get :new, {}, valid_session
      assigns(:legislation_sponsor).should be_a_new(LegislationSponsor)
    end
  end

  describe "GET edit" do
    it "assigns the requested legislation_sponsor as @legislation_sponsor" do
      legislation_sponsor = LegislationSponsor.create! valid_attributes
      get :edit, {:id => legislation_sponsor.to_param}, valid_session
      assigns(:legislation_sponsor).should eq(legislation_sponsor)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new LegislationSponsor" do
        expect {
          post :create, {:legislation_sponsor => valid_attributes}, valid_session
        }.to change(LegislationSponsor, :count).by(1)
      end

      it "assigns a newly created legislation_sponsor as @legislation_sponsor" do
        post :create, {:legislation_sponsor => valid_attributes}, valid_session
        assigns(:legislation_sponsor).should be_a(LegislationSponsor)
        assigns(:legislation_sponsor).should be_persisted
      end

      it "redirects to the created legislation_sponsor" do
        post :create, {:legislation_sponsor => valid_attributes}, valid_session
        response.should redirect_to(LegislationSponsor.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved legislation_sponsor as @legislation_sponsor" do
        # Trigger the behavior that occurs when invalid params are submitted
        LegislationSponsor.any_instance.stub(:save).and_return(false)
        post :create, {:legislation_sponsor => { "legislator_id" => "invalid value" }}, valid_session
        assigns(:legislation_sponsor).should be_a_new(LegislationSponsor)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        LegislationSponsor.any_instance.stub(:save).and_return(false)
        post :create, {:legislation_sponsor => { "legislator_id" => "invalid value" }}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested legislation_sponsor" do
        legislation_sponsor = LegislationSponsor.create! valid_attributes
        # Assuming there are no other legislation_sponsors in the database, this
        # specifies that the LegislationSponsor created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        LegislationSponsor.any_instance.should_receive(:update).with({ "legislator_id" => "1" })
        put :update, {:id => legislation_sponsor.to_param, :legislation_sponsor => { "legislator_id" => "1" }}, valid_session
      end

      it "assigns the requested legislation_sponsor as @legislation_sponsor" do
        legislation_sponsor = LegislationSponsor.create! valid_attributes
        put :update, {:id => legislation_sponsor.to_param, :legislation_sponsor => valid_attributes}, valid_session
        assigns(:legislation_sponsor).should eq(legislation_sponsor)
      end

      it "redirects to the legislation_sponsor" do
        legislation_sponsor = LegislationSponsor.create! valid_attributes
        put :update, {:id => legislation_sponsor.to_param, :legislation_sponsor => valid_attributes}, valid_session
        response.should redirect_to(legislation_sponsor)
      end
    end

    describe "with invalid params" do
      it "assigns the legislation_sponsor as @legislation_sponsor" do
        legislation_sponsor = LegislationSponsor.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        LegislationSponsor.any_instance.stub(:save).and_return(false)
        put :update, {:id => legislation_sponsor.to_param, :legislation_sponsor => { "legislator_id" => "invalid value" }}, valid_session
        assigns(:legislation_sponsor).should eq(legislation_sponsor)
      end

      it "re-renders the 'edit' template" do
        legislation_sponsor = LegislationSponsor.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        LegislationSponsor.any_instance.stub(:save).and_return(false)
        put :update, {:id => legislation_sponsor.to_param, :legislation_sponsor => { "legislator_id" => "invalid value" }}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested legislation_sponsor" do
      legislation_sponsor = LegislationSponsor.create! valid_attributes
      expect {
        delete :destroy, {:id => legislation_sponsor.to_param}, valid_session
      }.to change(LegislationSponsor, :count).by(-1)
    end

    it "redirects to the legislation_sponsors list" do
      legislation_sponsor = LegislationSponsor.create! valid_attributes
      delete :destroy, {:id => legislation_sponsor.to_param}, valid_session
      response.should redirect_to(legislation_sponsors_url)
    end
  end

end
