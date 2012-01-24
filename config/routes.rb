IIAArchitechture::Application.routes.draw do 
  
  devise_for :admins, :path_names => { :sign_in =>"login", :sign_out =>"logout"}
  
   resources :committees  
   resources :members  
  
  
   namespace :admin do 
     match '/dashboard' => "dashboard#index", :as => :root
     
     resources :committees    
    
   end
  match '/home' => 'home#index'
  match '/committees' => 'committees#index'
  match '/committees/:id' => 'committees#show'
  match '/members' => 'members#index'
  
  

  root :to => "front#index"
    
end
