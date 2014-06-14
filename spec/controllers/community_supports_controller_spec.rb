require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

describe CommunitySupportsController do

  # This should return the minimal set of attributes required to create a valid
  # CommunitySupport. As you add validations to CommunitySupport, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) { { "user" => "" } }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # CommunitySupportsController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all community_supports as @community_supports" do
      community_support = CommunitySupport.create! valid_attributes
      get :index, {}, valid_session
      assigns(:community_supports).should eq([community_support])
    end
  end

  describe "GET show" do
    it "assigns the requested community_support as @community_support" do
      community_support = CommunitySupport.create! valid_attributes
      get :show, {:id => community_support.to_param}, valid_session
      assigns(:community_support).should eq(community_support)
    end
  end

  describe "GET new" do
    it "assigns a new community_support as @community_support" do
      get :new, {}, valid_session
      assigns(:community_support).should be_a_new(CommunitySupport)
    end
  end

  describe "GET edit" do
    it "assigns the requested community_support as @community_support" do
      community_support = CommunitySupport.create! valid_attributes
      get :edit, {:id => community_support.to_param}, valid_session
      assigns(:community_support).should eq(community_support)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new CommunitySupport" do
        expect {
          post :create, {:community_support => valid_attributes}, valid_session
        }.to change(CommunitySupport, :count).by(1)
      end

      it "assigns a newly created community_support as @community_support" do
        post :create, {:community_support => valid_attributes}, valid_session
        assigns(:community_support).should be_a(CommunitySupport)
        assigns(:community_support).should be_persisted
      end

      it "redirects to the created community_support" do
        post :create, {:community_support => valid_attributes}, valid_session
        response.should redirect_to(CommunitySupport.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved community_support as @community_support" do
        # Trigger the behavior that occurs when invalid params are submitted
        CommunitySupport.any_instance.stub(:save).and_return(false)
        post :create, {:community_support => { "user" => "invalid value" }}, valid_session
        assigns(:community_support).should be_a_new(CommunitySupport)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        CommunitySupport.any_instance.stub(:save).and_return(false)
        post :create, {:community_support => { "user" => "invalid value" }}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested community_support" do
        community_support = CommunitySupport.create! valid_attributes
        # Assuming there are no other community_supports in the database, this
        # specifies that the CommunitySupport created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        CommunitySupport.any_instance.should_receive(:update).with({ "user" => "" })
        put :update, {:id => community_support.to_param, :community_support => { "user" => "" }}, valid_session
      end

      it "assigns the requested community_support as @community_support" do
        community_support = CommunitySupport.create! valid_attributes
        put :update, {:id => community_support.to_param, :community_support => valid_attributes}, valid_session
        assigns(:community_support).should eq(community_support)
      end

      it "redirects to the community_support" do
        community_support = CommunitySupport.create! valid_attributes
        put :update, {:id => community_support.to_param, :community_support => valid_attributes}, valid_session
        response.should redirect_to(community_support)
      end
    end

    describe "with invalid params" do
      it "assigns the community_support as @community_support" do
        community_support = CommunitySupport.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        CommunitySupport.any_instance.stub(:save).and_return(false)
        put :update, {:id => community_support.to_param, :community_support => { "user" => "invalid value" }}, valid_session
        assigns(:community_support).should eq(community_support)
      end

      it "re-renders the 'edit' template" do
        community_support = CommunitySupport.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        CommunitySupport.any_instance.stub(:save).and_return(false)
        put :update, {:id => community_support.to_param, :community_support => { "user" => "invalid value" }}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested community_support" do
      community_support = CommunitySupport.create! valid_attributes
      expect {
        delete :destroy, {:id => community_support.to_param}, valid_session
      }.to change(CommunitySupport, :count).by(-1)
    end

    it "redirects to the community_supports list" do
      community_support = CommunitySupport.create! valid_attributes
      delete :destroy, {:id => community_support.to_param}, valid_session
      response.should redirect_to(community_supports_url)
    end
  end

end