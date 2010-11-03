require 'spec_helper'

describe "events/new.html.erb" do
  before(:each) do
    assign(:event, stub_model(Event,
      :new_record? => true,
      :event_name => "MyString",
      :event_type => "MyString",
      :event_time => 1,
      :event_date => 1
    ))
  end

  it "renders new event form" do
    render

    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "form", :action => events_path, :method => "post" do
      assert_select "input#event_event_name", :name => "event[event_name]"
      assert_select "input#event_event_type", :name => "event[event_type]"
      assert_select "input#event_event_time", :name => "event[event_time]"
      assert_select "input#event_event_date", :name => "event[event_date]"
    end
  end
end
