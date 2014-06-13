require 'spec_helper'

describe CommunityMemberVotePositionsController do

  let(:valid_attributes) { { "agree" => "false" } }
  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all community_member_vote_positions as @community_member_vote_positions" do
      community_member_vote_position = CommunityMemberVotePosition.create! valid_attributes
      get :index, {}, valid_session
      assigns(:community_member_vote_positions).should eq([community_member_vote_position])
    end
  end

  describe "GET show" do
    it "assigns the requested community_member_vote_position as @community_member_vote_position" do
      community_member_vote_position = CommunityMemberVotePosition.create! valid_attributes
      get :show, {:id => community_member_vote_position.to_param}, valid_session
      assigns(:community_member_vote_position).should eq(community_member_vote_position)
    end
  end

  describe "GET new" do
    it "assigns a new community_member_vote_position as @community_member_vote_position" do
      get :new, {}, valid_session
      assigns(:community_member_vote_position).should be_a_new(CommunityMemberVotePosition)
    end
  end

  describe "GET edit" do
    it "assigns the requested community_member_vote_position as @community_member_vote_position" do
      community_member_vote_position = CommunityMemberVotePosition.create! valid_attributes
      get :edit, {:id => community_member_vote_position.to_param}, valid_session
      assigns(:community_member_vote_position).should eq(community_member_vote_position)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new CommunityMemberVotePosition" do
        expect {
          post :create, {:community_member_vote_position => valid_attributes}, valid_session
        }.to change(CommunityMemberVotePosition, :count).by(1)
      end

      it "assigns a newly created community_member_vote_position as @community_member_vote_position" do
        post :create, {:community_member_vote_position => valid_attributes}, valid_session
        assigns(:community_member_vote_position).should be_a(CommunityMemberVotePosition)
        assigns(:community_member_vote_position).should be_persisted
      end

      it "redirects to the created community_member_vote_position" do
        post :create, {:community_member_vote_position => valid_attributes}, valid_session
        response.should redirect_to(CommunityMemberVotePosition.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved community_member_vote_position as @community_member_vote_position" do
        # Trigger the behavior that occurs when invalid params are submitted
        CommunityMemberVotePosition.any_instance.stub(:save).and_return(false)
        post :create, {:community_member_vote_position => { "agree" => "invalid value" }}, valid_session
        assigns(:community_member_vote_position).should be_a_new(CommunityMemberVotePosition)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        CommunityMemberVotePosition.any_instance.stub(:save).and_return(false)
        post :create, {:community_member_vote_position => { "agree" => "invalid value" }}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested community_member_vote_position" do
        community_member_vote_position = CommunityMemberVotePosition.create! valid_attributes
        # Assuming there are no other community_member_vote_positions in the database, this
        # specifies that the CommunityMemberVotePosition created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        CommunityMemberVotePosition.any_instance.should_receive(:update).with({ "agree" => "false" })
        put :update, {:id => community_member_vote_position.to_param, :community_member_vote_position => { "agree" => "false" }}, valid_session
      end

      it "assigns the requested community_member_vote_position as @community_member_vote_position" do
        community_member_vote_position = CommunityMemberVotePosition.create! valid_attributes
        put :update, {:id => community_member_vote_position.to_param, :community_member_vote_position => valid_attributes}, valid_session
        assigns(:community_member_vote_position).should eq(community_member_vote_position)
      end

      it "redirects to the community_member_vote_position" do
        community_member_vote_position = CommunityMemberVotePosition.create! valid_attributes
        put :update, {:id => community_member_vote_position.to_param, :community_member_vote_position => valid_attributes}, valid_session
        response.should redirect_to(community_member_vote_position)
      end
    end

    describe "with invalid params" do
      it "assigns the community_member_vote_position as @community_member_vote_position" do
        community_member_vote_position = CommunityMemberVotePosition.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        CommunityMemberVotePosition.any_instance.stub(:save).and_return(false)
        put :update, {:id => community_member_vote_position.to_param, :community_member_vote_position => { "agree" => "invalid value" }}, valid_session
        assigns(:community_member_vote_position).should eq(community_member_vote_position)
      end

      it "re-renders the 'edit' template" do
        community_member_vote_position = CommunityMemberVotePosition.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        CommunityMemberVotePosition.any_instance.stub(:save).and_return(false)
        put :update, {:id => community_member_vote_position.to_param, :community_member_vote_position => { "agree" => "invalid value" }}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested community_member_vote_position" do
      community_member_vote_position = CommunityMemberVotePosition.create! valid_attributes
      expect {
        delete :destroy, {:id => community_member_vote_position.to_param}, valid_session
      }.to change(CommunityMemberVotePosition, :count).by(-1)
    end

    it "redirects to the community_member_vote_positions list" do
      community_member_vote_position = CommunityMemberVotePosition.create! valid_attributes
      delete :destroy, {:id => community_member_vote_position.to_param}, valid_session
      response.should redirect_to(community_member_vote_positions_url)
    end
  end

end
