require 'spec_helper'

describe "metrics/show" do
  before(:each) do
    @metric = assign(:metric, stub_model(Metric,
      :name => "Name",
      :purpose => "Purpose",
      :definition => "Definition"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/Purpose/)
    rendered.should match(/Definition/)
  end
end
