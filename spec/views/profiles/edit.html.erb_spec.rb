require 'spec_helper'

describe "profiles/edit", :type => :view do
  before(:each) do
    @profile = assign(:profile, Profile.create!(
      :bio => "MyText",
      :address => "MyString"
    ))
  end

  it "renders the edit profile form" do
    render

    assert_select "form[action=?][method=?]", profile_path(@profile), "post" do

      assert_select "textarea#profile_bio[name=?]", "profile[bio]"

      assert_select "input#profile_address[name=?]", "profile[address]"
    end
  end
end
