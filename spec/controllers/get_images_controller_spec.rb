require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

describe GetImagesController do

  # This should return the minimal set of attributes required to create a valid
  # GetImage. As you add validations to GetImage, be sure to
  # update the return value of this method accordingly.
  def valid_attributes
    {}
  end

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # GetImagesController. Be sure to keep this updated too.
  def valid_session
    {}
  end

  describe "GET index" do
    it "assigns all get_images as @get_images" do
      get_image = GetImage.create! valid_attributes
      get :index, {}, valid_session
      assigns(:get_images).should eq([get_image])
    end
  end

  describe "GET show" do
    it "assigns the requested get_image as @get_image" do
      get_image = GetImage.create! valid_attributes
      get :show, {:id => get_image.to_param}, valid_session
      assigns(:get_image).should eq(get_image)
    end
  end

  describe "GET new" do
    it "assigns a new get_image as @get_image" do
      get :new, {}, valid_session
      assigns(:get_image).should be_a_new(GetImage)
    end
  end

  describe "GET edit" do
    it "assigns the requested get_image as @get_image" do
      get_image = GetImage.create! valid_attributes
      get :edit, {:id => get_image.to_param}, valid_session
      assigns(:get_image).should eq(get_image)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new GetImage" do
        expect {
          post :create, {:get_image => valid_attributes}, valid_session
        }.to change(GetImage, :count).by(1)
      end

      it "assigns a newly created get_image as @get_image" do
        post :create, {:get_image => valid_attributes}, valid_session
        assigns(:get_image).should be_a(GetImage)
        assigns(:get_image).should be_persisted
      end

      it "redirects to the created get_image" do
        post :create, {:get_image => valid_attributes}, valid_session
        response.should redirect_to(GetImage.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved get_image as @get_image" do
        # Trigger the behavior that occurs when invalid params are submitted
        GetImage.any_instance.stub(:save).and_return(false)
        post :create, {:get_image => {}}, valid_session
        assigns(:get_image).should be_a_new(GetImage)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        GetImage.any_instance.stub(:save).and_return(false)
        post :create, {:get_image => {}}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested get_image" do
        get_image = GetImage.create! valid_attributes
        # Assuming there are no other get_images in the database, this
        # specifies that the GetImage created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        GetImage.any_instance.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, {:id => get_image.to_param, :get_image => {'these' => 'params'}}, valid_session
      end

      it "assigns the requested get_image as @get_image" do
        get_image = GetImage.create! valid_attributes
        put :update, {:id => get_image.to_param, :get_image => valid_attributes}, valid_session
        assigns(:get_image).should eq(get_image)
      end

      it "redirects to the get_image" do
        get_image = GetImage.create! valid_attributes
        put :update, {:id => get_image.to_param, :get_image => valid_attributes}, valid_session
        response.should redirect_to(get_image)
      end
    end

    describe "with invalid params" do
      it "assigns the get_image as @get_image" do
        get_image = GetImage.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        GetImage.any_instance.stub(:save).and_return(false)
        put :update, {:id => get_image.to_param, :get_image => {}}, valid_session
        assigns(:get_image).should eq(get_image)
      end

      it "re-renders the 'edit' template" do
        get_image = GetImage.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        GetImage.any_instance.stub(:save).and_return(false)
        put :update, {:id => get_image.to_param, :get_image => {}}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested get_image" do
      get_image = GetImage.create! valid_attributes
      expect {
        delete :destroy, {:id => get_image.to_param}, valid_session
      }.to change(GetImage, :count).by(-1)
    end

    it "redirects to the get_images list" do
      get_image = GetImage.create! valid_attributes
      delete :destroy, {:id => get_image.to_param}, valid_session
      response.should redirect_to(get_images_url)
    end
  end

end