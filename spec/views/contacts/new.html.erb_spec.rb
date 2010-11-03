require 'spec_helper'

describe "contacts/new.html.erb" do
  before(:each) do
    assign(:contact, stub_model(Contact,
      :new_record? => true,
      :full_name => "MyString",
      :email => "MyString",
      :subject => "MyString",
      :message => "MyText"
    ))
  end

  it "renders new contact form" do
    render

    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "form", :action => contacts_path, :method => "post" do
      assert_select "input#contact_full_name", :name => "contact[full_name]"
      assert_select "input#contact_email", :name => "contact[email]"
      assert_select "input#contact_subject", :name => "contact[subject]"
      assert_select "textarea#contact_message", :name => "contact[message]"
    end
  end
end
