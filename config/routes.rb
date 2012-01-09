IIAArchitechture::Application.routes.draw do
  
  devise_for :admins, :path_names => { :sign_in =>"login", :sign_out =>"logout"}
  
  
   namespace :admin do 
     match '/dashboard' => "dashboard#index", :as => :root
   end
   
  match '/home' => 'home#index'

  root :to => "front#index"
    
end
