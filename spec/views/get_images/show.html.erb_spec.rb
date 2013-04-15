require 'spec_helper'

describe "get_images/show" do
  before(:each) do
    @get_image = assign(:get_image, stub_model(GetImage,
      :link => "Link",
      :subreddit => "Subreddit"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Link/)
    rendered.should match(/Subreddit/)
  end
end
