require 'spec_helper'

describe "profiles/new", :type => :view do
  before(:each) do
    assign(:profile, Profile.new(
      :bio => "MyText",
      :address => "MyString"
    ))
  end

  it "renders new profile form" do
    render

    assert_select "form[action=?][method=?]", profiles_path, "post" do

      assert_select "textarea#profile_bio[name=?]", "profile[bio]"

      assert_select "input#profile_address[name=?]", "profile[address]"
    end
  end
end
