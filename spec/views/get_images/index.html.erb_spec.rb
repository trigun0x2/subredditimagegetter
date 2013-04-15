require 'spec_helper'

describe "get_images/index" do
  before(:each) do
    assign(:get_images, [
      stub_model(GetImage,
        :link => "Link",
        :subreddit => "Subreddit"
      ),
      stub_model(GetImage,
        :link => "Link",
        :subreddit => "Subreddit"
      )
    ])
  end

  it "renders a list of get_images" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Link".to_s, :count => 2
    assert_select "tr>td", :text => "Subreddit".to_s, :count => 2
  end
end
