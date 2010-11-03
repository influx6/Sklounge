require 'spec_helper'

describe "statics/index.html.erb" do
  before(:each) do
    assign(:statics, [
      stub_model(Static,
        :show_desc => "MyText",
        :about_desc => "MyText"
      ),
      stub_model(Static,
        :show_desc => "MyText",
        :about_desc => "MyText"
      )
    ])
  end

  it "renders a list of statics" do
    render
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
