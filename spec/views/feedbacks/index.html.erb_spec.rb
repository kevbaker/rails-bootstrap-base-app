require 'spec_helper'

describe "feedbacks/index.html.erb" do
  before(:each) do
    assign(:feedbacks, [
      stub_model(Feedback,
        :title => "Title",
        :body => "MyText",
        :email => "Email",
        :name => "Name"
      ),
      stub_model(Feedback,
        :title => "Title",
        :body => "MyText",
        :email => "Email",
        :name => "Name"
      )
    ])
  end

  it "renders a list of feedbacks" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
