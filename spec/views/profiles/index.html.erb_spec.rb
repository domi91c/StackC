require 'spec_helper'

describe "profiles/index", :type => :view do
  before(:each) do
    assign(:profiles, [
      Profile.create!(
        :bio => "MyText",
        :address => "Address"
      ),
      Profile.create!(
        :bio => "MyText",
        :address => "Address"
      )
    ])
  end

  it "renders a list of profiles" do
    render
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Address".to_s, :count => 2
  end
end
