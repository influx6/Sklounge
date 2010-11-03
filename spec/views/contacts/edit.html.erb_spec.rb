require 'spec_helper'

describe "contacts/edit.html.erb" do
  before(:each) do
    @contact = assign(:contact, stub_model(Contact,
      :new_record? => false,
      :full_name => "MyString",
      :email => "MyString",
      :subject => "MyString",
      :message => "MyText"
    ))
  end

  it "renders the edit contact form" do
    render

    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "form", :action => contact_path(@contact), :method => "post" do
      assert_select "input#contact_full_name", :name => "contact[full_name]"
      assert_select "input#contact_email", :name => "contact[email]"
      assert_select "input#contact_subject", :name => "contact[subject]"
      assert_select "textarea#contact_message", :name => "contact[message]"
    end
  end
end
