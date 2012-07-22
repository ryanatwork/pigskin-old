require 'spec_helper'

describe "picks/index" do
  before(:each) do
    assign(:picks, [
      stub_model(Pick,
        :user_id => 1,
        :week_id => 2,
        :team_id => 3,
        :points => 4
      ),
      stub_model(Pick,
        :user_id => 1,
        :week_id => 2,
        :team_id => 3,
        :points => 4
      )
    ])
  end

  it "renders a list of picks" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => 4.to_s, :count => 2
  end
end
