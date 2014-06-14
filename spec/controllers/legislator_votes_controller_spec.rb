require 'spec_helper'

describe LegislatorVotesController do

  let(:valid_attributes) { { "date_of_vote" => "2014-06-13" } }
  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all legislator_votes as @legislator_votes" do
      legislator_vote = LegislatorVote.create! valid_attributes
      get :index, {}, valid_session
      assigns(:legislator_votes).should eq([legislator_vote])
    end
  end

  describe "GET show" do
    it "assigns the requested legislator_vote as @legislator_vote" do
      legislator_vote = LegislatorVote.create! valid_attributes
      get :show, {:id => legislator_vote.to_param}, valid_session
      assigns(:legislator_vote).should eq(legislator_vote)
    end
  end

  describe "GET new" do
    it "assigns a new legislator_vote as @legislator_vote" do
      get :new, {}, valid_session
      assigns(:legislator_vote).should be_a_new(LegislatorVote)
    end
  end

  describe "GET edit" do
    it "assigns the requested legislator_vote as @legislator_vote" do
      legislator_vote = LegislatorVote.create! valid_attributes
      get :edit, {:id => legislator_vote.to_param}, valid_session
      assigns(:legislator_vote).should eq(legislator_vote)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new LegislatorVote" do
        expect {
          post :create, {:legislator_vote => valid_attributes}, valid_session
        }.to change(LegislatorVote, :count).by(1)
      end

      it "assigns a newly created legislator_vote as @legislator_vote" do
        post :create, {:legislator_vote => valid_attributes}, valid_session
        assigns(:legislator_vote).should be_a(LegislatorVote)
        assigns(:legislator_vote).should be_persisted
      end

      it "redirects to the created legislator_vote" do
        post :create, {:legislator_vote => valid_attributes}, valid_session
        response.should redirect_to(LegislatorVote.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved legislator_vote as @legislator_vote" do
        # Trigger the behavior that occurs when invalid params are submitted
        LegislatorVote.any_instance.stub(:save).and_return(false)
        post :create, {:legislator_vote => { "date_of_vote" => "invalid value" }}, valid_session
        assigns(:legislator_vote).should be_a_new(LegislatorVote)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        LegislatorVote.any_instance.stub(:save).and_return(false)
        post :create, {:legislator_vote => { "date_of_vote" => "invalid value" }}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested legislator_vote" do
        legislator_vote = LegislatorVote.create! valid_attributes
        # Assuming there are no other legislator_votes in the database, this
        # specifies that the LegislatorVote created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        LegislatorVote.any_instance.should_receive(:update).with({ "date_of_vote" => "2014-06-13" })
        put :update, {:id => legislator_vote.to_param, :legislator_vote => { "date_of_vote" => "2014-06-13" }}, valid_session
      end

      it "assigns the requested legislator_vote as @legislator_vote" do
        legislator_vote = LegislatorVote.create! valid_attributes
        put :update, {:id => legislator_vote.to_param, :legislator_vote => valid_attributes}, valid_session
        assigns(:legislator_vote).should eq(legislator_vote)
      end

      it "redirects to the legislator_vote" do
        legislator_vote = LegislatorVote.create! valid_attributes
        put :update, {:id => legislator_vote.to_param, :legislator_vote => valid_attributes}, valid_session
        response.should redirect_to(legislator_vote)
      end
    end

    describe "with invalid params" do
      it "assigns the legislator_vote as @legislator_vote" do
        legislator_vote = LegislatorVote.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        LegislatorVote.any_instance.stub(:save).and_return(false)
        put :update, {:id => legislator_vote.to_param, :legislator_vote => { "date_of_vote" => "invalid value" }}, valid_session
        assigns(:legislator_vote).should eq(legislator_vote)
      end

      it "re-renders the 'edit' template" do
        legislator_vote = LegislatorVote.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        LegislatorVote.any_instance.stub(:save).and_return(false)
        put :update, {:id => legislator_vote.to_param, :legislator_vote => { "date_of_vote" => "invalid value" }}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested legislator_vote" do
      legislator_vote = LegislatorVote.create! valid_attributes
      expect {
        delete :destroy, {:id => legislator_vote.to_param}, valid_session
      }.to change(LegislatorVote, :count).by(-1)
    end

    it "redirects to the legislator_votes list" do
      legislator_vote = LegislatorVote.create! valid_attributes
      delete :destroy, {:id => legislator_vote.to_param}, valid_session
      response.should redirect_to(legislator_votes_url)
    end
  end

end
