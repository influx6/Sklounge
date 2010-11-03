require 'spec_helper'

describe "events/show.html.erb" do
  before(:each) do
    @event = assign(:event, stub_model(Event,
      :event_name => "Event Name",
      :event_type => "Event Type",
      :event_time => 1,
      :event_date => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    rendered.should match(/Event Name/)
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    rendered.should match(/Event Type/)
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    rendered.should match(/1/)
  end
end
