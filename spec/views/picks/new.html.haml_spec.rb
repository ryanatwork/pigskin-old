require 'spec_helper'

describe "picks/new" do
  before(:each) do
    assign(:pick, stub_model(Pick,
      :user_id => 1,
      :week_id => 1,
      :team_id => 1,
      :points => 1
    ).as_new_record)
  end

  it "renders new pick form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => picks_path, :method => "post" do
      assert_select "input#pick_user_id", :name => "pick[user_id]"
      assert_select "input#pick_week_id", :name => "pick[week_id]"
      assert_select "input#pick_team_id", :name => "pick[team_id]"
      assert_select "input#pick_points", :name => "pick[points]"
    end
  end
end
