# spec/controllers/posts_controller_spec.rb
require 'rails_helper'
# Import the specs helper.
require './spec/support/devise_support'



describe PostsController do
   before(:each) do
      @request.env["devise.mapping"] = Devise.mappings[:user]
      user = FactoryGirl.create(:user)
      #user.confirm! # or set a confirmed_at inside the factory. Only necessary if you are using the "confirmable" module
      sign_in user  
  end
  describe 'POST create' do

    it 'creates a new post with valid attributes' do
      expect{
        post_attr = attributes_for(:post)
        post :create, post: post_attr
      }.to change(Post,:count).by(1)
    end
  end
  
  describe "GET #index" do
  it "populates an array of posts" do
    post = FactoryGirl.create(:post)
    get :index
    assigns(:posts).should eq([post])
  end
  
    it "renders the :index view" do
      get :index
      response.should render_template :index
    end
  end
  
  describe "GET #show" do
  it "assigns the requested post to @post" do
    post = FactoryGirl.create(:post)
    get :show, id: post
    assigns(:post).should eq(post)
  end
  
  it "renders the #show view" do
    get :show, id: FactoryGirl.create(:post)
    response.should render_template :show
  end
end
  
  






end