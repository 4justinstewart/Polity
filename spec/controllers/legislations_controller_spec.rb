# require 'spec_helper'

# # This spec was generated by rspec-rails when you ran the scaffold generator.
# # It demonstrates how one might use RSpec to specify the controller code that
# # was generated by Rails when you ran the scaffold generator.
# #
# # It assumes that the implementation code is generated by the rails scaffold
# # generator.  If you are using any extension libraries to generate different
# # controller code, this generated spec may or may not pass.
# #
# # It only uses APIs available in rails and/or rspec-rails.  There are a number
# # of tools you can use to make these specs even more expressive, but we're
# # sticking to rails and rspec-rails APIs to keep things simple and stable.
# #
# # Compared to earlier versions of this generator, there is very limited use of
# # stubs and message expectations in this spec.  Stubs are only used when there
# # is no simpler way to get a handle on the object needed for the example.
# # Message expectations are only used when there is no simpler way to specify
# # that an instance is receiving a specific message.

# describe LegislationsController do

#   # This should return the minimal set of attributes required to create a valid
#   # Legislation. As you add validations to Legislation, be sure to
#   # adjust the attributes here as well.
#   let(:valid_attributes) { { "city_identifier" => "MyString" } }

#   # This should return the minimal set of values that should be in the session
#   # in order to pass any filters (e.g. authentication) defined in
#   # LegislationsController. Be sure to keep this updated too.
#   let(:valid_session) { {} }

#   describe "GET index" do
#     it "assigns all legislations as @legislations" do
#       legislation = Legislation.create! valid_attributes
#       get :index, {}, valid_session
#       assigns(:legislations).should eq([legislation])
#     end
#   end

#   describe "GET show" do
#     it "assigns the requested legislation as @legislation" do
#       legislation = Legislation.create! valid_attributes
#       get :show, {:id => legislation.to_param}, valid_session
#       assigns(:legislation).should eq(legislation)
#     end
#   end

#   describe "GET new" do
#     it "assigns a new legislation as @legislation" do
#       get :new, {}, valid_session
#       assigns(:legislation).should be_a_new(Legislation)
#     end
#   end

#   describe "GET edit" do
#     it "assigns the requested legislation as @legislation" do
#       legislation = Legislation.create! valid_attributes
#       get :edit, {:id => legislation.to_param}, valid_session
#       assigns(:legislation).should eq(legislation)
#     end
#   end

#   describe "POST create" do
#     describe "with valid params" do
#       it "creates a new Legislation" do
#         expect {
#           post :create, {:legislation => valid_attributes}, valid_session
#         }.to change(Legislation, :count).by(1)
#       end

#       it "assigns a newly created legislation as @legislation" do
#         post :create, {:legislation => valid_attributes}, valid_session
#         assigns(:legislation).should be_a(Legislation)
#         assigns(:legislation).should be_persisted
#       end

#       it "redirects to the created legislation" do
#         post :create, {:legislation => valid_attributes}, valid_session
#         response.should redirect_to(Legislation.last)
#       end
#     end

#     describe "with invalid params" do
#       it "assigns a newly created but unsaved legislation as @legislation" do
#         # Trigger the behavior that occurs when invalid params are submitted
#         Legislation.any_instance.stub(:save).and_return(false)
#         post :create, {:legislation => { "city_identifier" => "invalid value" }}, valid_session
#         assigns(:legislation).should be_a_new(Legislation)
#       end

#       it "re-renders the 'new' template" do
#         # Trigger the behavior that occurs when invalid params are submitted
#         Legislation.any_instance.stub(:save).and_return(false)
#         post :create, {:legislation => { "city_identifier" => "invalid value" }}, valid_session
#         response.should render_template("new")
#       end
#     end
#   end

#   describe "PUT update" do
#     describe "with valid params" do
#       it "updates the requested legislation" do
#         legislation = Legislation.create! valid_attributes
#         # Assuming there are no other legislations in the database, this
#         # specifies that the Legislation created on the previous line
#         # receives the :update_attributes message with whatever params are
#         # submitted in the request.
#         Legislation.any_instance.should_receive(:update).with({ "city_identifier" => "MyString" })
#         put :update, {:id => legislation.to_param, :legislation => { "city_identifier" => "MyString" }}, valid_session
#       end

#       it "assigns the requested legislation as @legislation" do
#         legislation = Legislation.create! valid_attributes
#         put :update, {:id => legislation.to_param, :legislation => valid_attributes}, valid_session
#         assigns(:legislation).should eq(legislation)
#       end

#       it "redirects to the legislation" do
#         legislation = Legislation.create! valid_attributes
#         put :update, {:id => legislation.to_param, :legislation => valid_attributes}, valid_session
#         response.should redirect_to(legislation)
#       end
#     end

#     describe "with invalid params" do
#       it "assigns the legislation as @legislation" do
#         legislation = Legislation.create! valid_attributes
#         # Trigger the behavior that occurs when invalid params are submitted
#         Legislation.any_instance.stub(:save).and_return(false)
#         put :update, {:id => legislation.to_param, :legislation => { "city_identifier" => "invalid value" }}, valid_session
#         assigns(:legislation).should eq(legislation)
#       end

#       it "re-renders the 'edit' template" do
#         legislation = Legislation.create! valid_attributes
#         # Trigger the behavior that occurs when invalid params are submitted
#         Legislation.any_instance.stub(:save).and_return(false)
#         put :update, {:id => legislation.to_param, :legislation => { "city_identifier" => "invalid value" }}, valid_session
#         response.should render_template("edit")
#       end
#     end
#   end

#   describe "DELETE destroy" do
#     it "destroys the requested legislation" do
#       legislation = Legislation.create! valid_attributes
#       expect {
#         delete :destroy, {:id => legislation.to_param}, valid_session
#       }.to change(Legislation, :count).by(-1)
#     end

#     it "redirects to the legislations list" do
#       legislation = Legislation.create! valid_attributes
#       delete :destroy, {:id => legislation.to_param}, valid_session
#       response.should redirect_to(legislations_url)
#     end
#   end

# end
