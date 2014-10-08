require 'spec_helper'

describe "metrics/index" do
  before(:each) do
    assign(:metrics, [
      stub_model(Metric,
        :name => "Name",
        :purpose => "Purpose",
        :definition => "Definition"
      ),
      stub_model(Metric,
        :name => "Name",
        :purpose => "Purpose",
        :definition => "Definition"
      )
    ])
  end

  it "renders a list of metrics" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Purpose".to_s, :count => 2
    assert_select "tr>td", :text => "Definition".to_s, :count => 2
  end
end
