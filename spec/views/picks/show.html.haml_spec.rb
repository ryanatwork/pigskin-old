require 'spec_helper'

describe "picks/show" do
  before(:each) do
    @pick = assign(:pick, stub_model(Pick,
      :user_id => 1,
      :week_id => 2,
      :team_id => 3,
      :points => 4
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/2/)
    rendered.should match(/3/)
    rendered.should match(/4/)
  end
end
