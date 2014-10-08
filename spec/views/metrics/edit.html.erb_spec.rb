require 'spec_helper'

describe "metrics/edit" do
  before(:each) do
    @metric = assign(:metric, stub_model(Metric,
      :name => "MyString",
      :purpose => "MyString",
      :definition => "MyString"
    ))
  end

  it "renders the edit metric form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", metric_path(@metric), "post" do
      assert_select "input#metric_name[name=?]", "metric[name]"
      assert_select "input#metric_purpose[name=?]", "metric[purpose]"
      assert_select "input#metric_definition[name=?]", "metric[definition]"
    end
  end
end
