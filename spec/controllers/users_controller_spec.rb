require 'spec_helper'

describe UsersController do
  integrate_views
  describe "GET 'show'" do

    before(:each) do
      @user = Factory(:user)
      # Arrange for User.find(params[:id]) to find the right user.
      User.stub!(:find, @user.id).and_return(@user)
    end

    it "should be successful" do
      get :show, :id => @user
      response.should be_success
    end
  end

  describe "GET 'new'" do
    it "should be successful" do
      get 'new'
      response.should be_success
    end
  
    it "should have the right title" do
      get 'new'
      response.should have_tag("title", /Sign up/)
    end
  end
  describe "Get 'show'" do
  it "should have the right title" do
      get :show, :id => @user
      response.should have_tag("title", /#{@user.name}/)
    end

    it "should include the user's name" do
      get :show, :id => @user
      response.should have_tag("h2", /#{@user.name}/)
    end

    it "should have a profile image" do
      get :show, :id => @user
      response.should have_tag("h2>img", :class => "gravatar")
    end
  end

end

