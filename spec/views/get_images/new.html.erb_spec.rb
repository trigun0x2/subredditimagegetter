require 'spec_helper'

describe "get_images/new" do
  before(:each) do
    assign(:get_image, stub_model(GetImage,
      :link => "MyString",
      :subreddit => "MyString"
    ).as_new_record)
  end

  it "renders new get_image form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => get_images_path, :method => "post" do
      assert_select "input#get_image_link", :name => "get_image[link]"
      assert_select "input#get_image_subreddit", :name => "get_image[subreddit]"
    end
  end
end
