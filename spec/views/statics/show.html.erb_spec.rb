require 'spec_helper'

describe "statics/show.html.erb" do
  before(:each) do
    @static = assign(:static, stub_model(Static,
      :show_desc => "MyText",
      :about_desc => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    rendered.should match(/MyText/)
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    rendered.should match(/MyText/)
  end
end
