require 'rails_helper'
# Import the specs helper.
require './spec/support/devise_support'

RSpec.describe CommentsController, type: :controller do
 before(:each) do
      @request.env["devise.mapping"] = Devise.mappings[:user]
      user = FactoryGirl.create(:user)
      #user.confirm! # or set a confirmed_at inside the factory. Only necessary if you are using the "confirmable" module
      sign_in user  
  end

  

end