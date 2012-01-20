IIAArchitechture::Application.routes.draw do 
  
  devise_for :admins, :path_names => { :sign_in =>"login", :sign_out =>"logout"}
  
   resources :committees    
  
  
   namespace :admin do 
     match '/dashboard' => "dashboard#index", :as => :root
     
     resources :committees    
    
   end
   
  match '/home' => 'home#index'
  match '/committees' => 'committees#index'
  match '/member' => 'committees#member'
  
 

  root :to => "front#index"
    
end
