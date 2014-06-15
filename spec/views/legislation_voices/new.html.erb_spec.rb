# require 'spec_helper'

# describe "legislation_voices/new" do
#   before(:each) do
#     assign(:legislation_voice, stub_model(LegislationVoice,
#       :user => nil,
#       :legislation => nil,
#       :support => false,
#       :feedback => "MyText"
#     ).as_new_record)
#   end

#   it "renders new legislation_voice form" do
#     render

#     # Run the generator again with the --webrat flag if you want to use webrat matchers
#     assert_select "form[action=?][method=?]", legislation_voices_path, "post" do
#       assert_select "input#legislation_voice_user[name=?]", "legislation_voice[user]"
#       assert_select "input#legislation_voice_legislation[name=?]", "legislation_voice[legislation]"
#       assert_select "input#legislation_voice_support[name=?]", "legislation_voice[support]"
#       assert_select "textarea#legislation_voice_feedback[name=?]", "legislation_voice[feedback]"
#     end
#   end
# end
