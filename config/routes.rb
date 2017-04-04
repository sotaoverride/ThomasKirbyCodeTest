Rails.application.routes.draw do
   get 'posts/index'
 
   root 'posts#index'
   
   resources :posts do
      resources :comments
   end

  devise_for :users, :controllers => { registrations: 'registrations' }
  
  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
