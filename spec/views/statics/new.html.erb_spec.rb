require 'spec_helper'

describe "statics/new.html.erb" do
  before(:each) do
    assign(:static, stub_model(Static,
      :new_record? => true,
      :show_desc => "MyText",
      :about_desc => "MyText"
    ))
  end

  it "renders new static form" do
    render

    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "form", :action => statics_path, :method => "post" do
      assert_select "textarea#static_show_desc", :name => "static[show_desc]"
      assert_select "textarea#static_about_desc", :name => "static[about_desc]"
    end
  end
end
